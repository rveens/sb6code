#include <sb6.h>
#include <vector>
#include <fstream>
#include <iostream>
#include <string>
#include <sstream>
#include <stdlib.h>

#include <vmath.h>
#include <GL/gl3w.h>
#include <sb6ktx.h>

using std::vector;
using std::ifstream;
using std::cerr;
using std::endl;
using std::ios;
using std::string;
using std::getline;
using std::istringstream;

class probeersel_app : public sb6::application
{
private:
	// Gluint = pointerwaarde
	GLuint		program;		// het opengl programma
	GLuint		vao; 			// vertex array object GLuint		vertices_buffer; 	// buffer voor vertices
	GLuint		vertices_buffer; 	// buffer voor vertices
	GLuint		vertex_indices_buffer; 	// buffer voor elements
	GLuint		texCoordinates_buffer; 	// buffer voor elements
	GLuint 		texture;		// buffer voor de texture

	/* locaties van uniforms */
	GLint		mv_location;
	GLint		proj_location;

	// float voor aspect, en de projection matrix
	float 		aspect;
	vmath::mat4 	proj_matrix;

public:
	void init()
	{
		static const char title[] = "OpenGL SuperBible - Probeersel";

		sb6::application::init();

		memcpy(info.title, title, sizeof(title));
	}

	GLuint compileProgram()
	{
		GLuint program,
		       vertexshader,
		       tessCshader,
		       tessEshader,
		       geometryshader,
		       fragmentshader;

		// vertex shader maken en compilen
		vertexshader = glCreateShader(GL_VERTEX_SHADER);
		loadShaderSource("/home/rick/Documenten/sb6code/src/A_probeersels/vertex.glsl", vertexshader);
		glCompileShader(vertexshader);

		print_log(vertexshader);

		// tesselationControl shader maken en compilen
		/* tessCshader = glCreateShader(GL_TESS_CONTROL_SHADER); */
		/* loadShaderSource("/home/rick/Documenten/sb6code/src/A_probeersels/tessellationControl.glsl", tessCshader); */
		/* glCompileShader(tessCshader); */

		/* print_log(tessCshader); */

		/* // tesselationEvaluation shader maken en compilen */
		/* tessEshader = glCreateShader(GL_TESS_EVALUATION_SHADER); */
		/* loadShaderSource("/home/rick/Documenten/sb6code/src/A_probeersels/tessellationEvaluation.glsl", tessEshader); */
		/* glCompileShader(tessEshader); */

		/* print_log(tessEshader); */

		/* // geometry shader maken en compilen */
		/* geometryshader = glCreateShader(GL_GEOMETRY_SHADER); */
		/* loadShaderSource("/home/rick/Documenten/sb6code/src/A_probeersels/geometry.glsl", geometryshader); */
		/* glCompileShader(geometryshader); */

		/* print_log(tessEshader); */

		// fragment shader maken en compilen
		fragmentshader = glCreateShader(GL_FRAGMENT_SHADER);
		loadShaderSource("/home/rick/Documenten/sb6code/src/A_probeersels/fragment.glsl", fragmentshader);
		glCompileShader(fragmentshader);

		print_log(fragmentshader);

		// programma maken
		program = glCreateProgram();

		// shaders er aan toevoegen en linken
		glAttachShader(program, vertexshader);
		/* glAttachShader(program, tessCshader); */
		/* glAttachShader(program, tessEshader); */
		/* glAttachShader(program, geometryshader); */
		glAttachShader(program, fragmentshader);
		glLinkProgram(program);

		print_log(program);

		// verder ruimen we nog wat op
		glDeleteShader(vertexshader);
		/* glDeleteShader(tessCshader); */
		/* glDeleteShader(tessEshader); */
		/* glDeleteShader(geometryshader); */
		glDeleteShader(fragmentshader);

		return program;
	}

	virtual void startup()
	{
		program = compileProgram();

		// locatie van uniform variabelen in shaders worden opgevraagd.
		mv_location = glGetUniformLocation(program, "mv_matrix");
		proj_location = glGetUniformLocation(program, "proj_matrix");

		feedTexture();
		feedVertexData();

		// wat instellingen

		// culling - zet de achterkant van driehoeken uit.
		/* glEnable(GL_CULL_FACE); */
		/* glFrontFace(GL_CCW); */

		glEnable(GL_DEPTH_TEST);
		glDepthFunc(GL_LESS);

		// polygon mode, 
		/* glPolygonMode(GL_FRONT_AND_BACK, GL_LINE); */
		/* glPointSize(5.0f); */

		// texture wrap
		glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT );
		glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT );

		/* wat opties voor texture filtering */
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

	}

	void loadOBJ(const char *filename, vector<vmath::vec4> &vertices,
						vector<vmath::vec3> &vertexNormals,
						vector<vmath::vec2> &texCoordinates,
						vector<GLushort> &vertex_indices)
	{
		string line;
		vector<GLushort> texCoordinates_indices, normal_indices;

 		ifstream in(filename, ios::in);
 		if (!in) { cerr << "Cannot open " << filename << endl; };

		while (getline(in, line)) {
			if (line.substr(0, 2) == "v ") {
				/* vertices */
				istringstream s(line.substr(2));
				vmath::vec4 v;
				s >> v[0]; s >> v[1]; s >> v[2]; v[3] = 1.0f;
				vertices.push_back(v);
			} else if ( line.substr(0, 3) == "vt ") {
				/* texture coordinates */
				istringstream s(line.substr(2));
				vmath::vec2 tc;
				s >> tc[0]; s >> tc[1];
				texCoordinates.push_back(tc);
			} else if (line.substr(0, 3) == "vn ") {
				/* vertex normals */ 
				istringstream s(line.substr(2));
				vmath::vec3 vn;
				s >> vn[0]; s >> vn[1]; s >> vn[2];
				vertexNormals.push_back(vn);
			} else if (line.substr(0, 2) == "f ") { // todo letten op '/'-es
				/* faces, 
				 * f <vertexNr>/<textureCoord>/<normal> */ 
				istringstream s(line.substr(2));

				// read through x/x/x pairs, which are seperated by spaces
				string facePair;
				for (int i = 0; i < 3; ++i) { // 3 is our max 
					getline(s, facePair, ' ');
					istringstream facePairss(facePair);

					string vertexNr, texCoordnr, normalnr;
					getline(facePairss, vertexNr, '/');
					vertex_indices.push_back(atol(vertexNr.c_str()));

					getline(facePairss, texCoordnr, '/');
					texCoordinates_indices.push_back(atol(texCoordnr.c_str()));

					getline(facePairss, normalnr, '/');
					normal_indices.push_back(atol(normalnr.c_str()));
				}
			} else if (line.substr(0, 6) == "usemtl") {
				/* usemtl, not implemented yet */
			} else if (line.substr(0, 6) == "mtllib") {
				/* mtllib, not implemented yet */
			} else if (line[0] == '#') { } // comments, ignore these ofc
		}

		// drawelements fix! vertex indices in .OBJ starten vanaf 1, OpenGL start vanaf 0.
		for ( GLushort &vertex_index : vertex_indices)
			vertex_index--;
		// zelfde voor texCoordinates
		for ( GLushort &tci : texCoordinates_indices)
			tci--;

		// maak tex coordinates
		vector<vmath::vec2> texCoordinates_final;
		for (int i = 0; i < texCoordinates_indices.size(); ++i)
			texCoordinates_final.push_back(texCoordinates[texCoordinates_indices[i]]);
		texCoordinates = texCoordinates_final;
	}


	/* Stop in een buffer en geef deze aan de vertex shader met vertexAttribPointer */
	void feedVertexData()
	{
		vector<vmath::vec4> vertices;
		vector<vmath::vec3> vertexNormals;
		vector<vmath::vec2> texCoordinates;
		vector<GLushort> vertex_indices, texCoordinates_indices, normal_indices;

		loadOBJ("/home/rick/Documenten/sb6code/bin/media/objects/icosphere.obj", vertices,
				vertexNormals, texCoordinates, vertex_indices);

		std::cout << "vertices size: " << vertices.size() << endl;
		std::cout << "vertexNormals size: " << vertexNormals.size() << endl;
		std::cout << "texCoordinates size: " << texCoordinates.size() << endl;

		std::cout << "vertex_indices size: " << vertex_indices.size() << endl;
		std::cout << "texCoordinates_indices size: " << texCoordinates_indices.size() << endl;
		std::cout << "normal_indices size: " << normal_indices.size() << endl;

		// vraag om een vertex array object naam
		glGenVertexArrays(1, &vao);
		// met deze functie wordt dit vao aan de context gebonden
		glBindVertexArray(vao);

		/* buffer voor vertices */

		// vraag een buffer naam van opengl.
		glGenBuffers(1, &vertices_buffer);
		// bind de buffer aan een target, in dit geval de array_buffer
		glBindBuffer(GL_ARRAY_BUFFER, vertices_buffer);
		// vraag ruimte aan opengl voor de buffer
		glBufferData(GL_ARRAY_BUFFER,
				vertices.size() * sizeof(vmath::vec4),
				&vertices[0], // we geven meteen aan welke data er in moet. het kan ook met glbuffersubdata òf (~map.. nogwat?)
				GL_STATIC_DRAW);

		// vroeger gaven we met deze call de pointer mee.
		// Tegenwoordig haalt opengl de data uit een buffer op de videokaart.
		// Deze call is echter nog wel nodig om aan te geven dat we graag 
		// willen dat opengl de data uit de gl_array_buffer target moet halen voor de vertex data.
		glVertexAttribPointer(0, 4, GL_FLOAT, GL_FALSE, 0, NULL);
		glEnableVertexAttribArray(0);

		/* buffer voor vertex indices */

		glGenBuffers(1, &vertex_indices_buffer);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vertex_indices_buffer);
		glBufferData(GL_ELEMENT_ARRAY_BUFFER,
				vertex_indices.size() * sizeof(GLushort),
				&vertex_indices[0], // we geven meteen aan welke data er in moet. het kan ook met glbuffersubdata òf (~map.. nogwat?)
				GL_STATIC_DRAW);

		/* uv of texture coordinates */
		glGenBuffers(1, &texCoordinates_buffer);
		glBindBuffer(GL_ARRAY_BUFFER, texCoordinates_buffer);
		glBufferData(GL_ARRAY_BUFFER,
				sizeof(std::vector<GLushort>) + (sizeof(GLushort) * texCoordinates_indices.size()),
				&texCoordinates[0],
				GL_STATIC_DRAW);
	}

	/* Gooi texture in het glActiveTexture (GL_TEXTURE0) m.b.v. glBindTexture */
	void feedTexture()
	{
		// maak een texture name
		glGenTextures(1, &texture);

		// bind deze aan de context texture_2d
		glBindTexture(GL_TEXTURE_2D, texture);

		// vertel opengl hoeveel data we gaan gebruiken
		glTexStorage2D(GL_TEXTURE_2D,
				8, 
				GL_RGBA32F,
				256, 256);

		/* texture data maken */
		float *data = new float[256 * 256 * 4];
		int width = 256;
		int height = 256;

		int x, y;

		for (y = 0; y < height; y++)
		{
			for (x = 0; x < width; x++)
			{
				data[(y * width + x) * 4 + 0] = (float)((x & y) & 0xFF) / 255.0f;
				data[(y * width + x) * 4 + 1] = (float)((x | y) & 0xFF) / 255.0f;
				data[(y * width + x) * 4 + 2] = (float)((x ^ y) & 0xFF) / 255.0f;
				data[(y * width + x) * 4 + 3] = 1.0f;
			}
		}
		/* einde texture data maken */

		// geef data op met deze functie
		glTexSubImage2D(GL_TEXTURE_2D, 
				0, 
				0, 0,
				256, 256, 
				GL_RGBA,
				GL_FLOAT,
				data);

		delete[] data;
	}



	virtual void render(double currentTime)
	{
		// viewport instellen
		glViewport(0, 0, info.windowWidth, info.windowHeight);

		static const GLfloat green[] = { 0.0f, 0.25f, 0.0f, 1.0f }; // kleurwaarde
		static const GLfloat one = 1.0f; // voor de diepte

		glClearBufferfv(GL_COLOR, 0, green); // maak heel het scherm eerst leeg.
		glClearBufferfv(GL_DEPTH, 0, &one); // clear de diepte buffer

		glUseProgram(program);

		glUniformMatrix4fv(proj_location, 1, GL_FALSE, proj_matrix);

		// roteer 90 graden via de x as, 90 graden via de y as, translatie in de diepte
		// zodat de vierkant kleiner wordt
		vmath::mat4 mv_matrix = vmath::translate(0.0f, 0.0f, -4.0f) *
			vmath::rotate(180.0f, 0.0f, 1.0f, 0.0f) *
			vmath::rotate((float)currentTime * 90.0f, -1.0f, 0.0f, 0.0f);

		// Update de uniform waarde in de shader.
		glUniformMatrix4fv(mv_location, 1, GL_FALSE, mv_matrix);

		// draw command
		int elementBufferSize; glGetBufferParameteriv(GL_ELEMENT_ARRAY_BUFFER, GL_BUFFER_SIZE, &elementBufferSize); // grootte van de ELEMENT_ARRAY_BUFFER opvragen
		glDrawElements(GL_TRIANGLES, elementBufferSize/sizeof(GLushort), GL_UNSIGNED_SHORT, 0);
	}


	virtual void shutdown()
	{
		glDeleteVertexArrays(1, &vao);
		glDeleteProgram(program);
		glDeleteBuffers(1, &vertices_buffer);
		glDeleteBuffers(1, &vertex_indices_buffer);
		glDeleteTextures(1, &texture);
	}

	void onResize(int w, int h)
	{
		sb6::application::onResize(w, h);

		aspect = (float)w / (float)h;
		proj_matrix = vmath::perspective(50.0f, aspect, 0.1f, 1000.0f);
	}
};

DECLARE_MAIN(probeersel_app)
