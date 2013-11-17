#include <sb6.h>
#include <fstream>

using std::string;

class probeersel_app : public sb6::application
{
private:
	GLuint program;
	GLuint vertext_array_object;

public:
	void init()
	{
		static const char title[] = "OpenGL SuperBible - Probeersel";

		sb6::application::init();

		memcpy(info.title, title, sizeof(title));
	}

	virtual void startup()
	{
		program = compileProgram();
		glGenVertexArrays(1, &vertext_array_object);
		glBindVertexArray(vertext_array_object);
	}

	string loadShaderFile(string location)
	{
		// de string array
		string totalString;
		// de input file stream
		std::ifstream ifs(location.c_str());    

		while (ifs.good()) {
			string s;
			getline(ifs, s);
			totalString.append(s + "\n");
		}

		return totalString;
	}

	void loadShaderSource(const char *s, GLuint shaderObject)
	{
		string vs_source1 = loadShaderFile(s);
		GLchar const *shader_source = vs_source1.c_str();
		GLint const shader_length = vs_source1.size();
		glShaderSource(shaderObject, 1, &shader_source, &shader_length);
	}

	void print_log(GLuint object)
	{
		GLint log_length = 0;
		if (glIsShader(object))
			glGetShaderiv(object, GL_INFO_LOG_LENGTH, &log_length);
		else if (glIsProgram(object))
			glGetProgramiv(object, GL_INFO_LOG_LENGTH, &log_length);
		else {
			fprintf(stderr, "printlog: Not a shader or a program\n");
			return;
		}

		char* log = new char[log_length];

		if (glIsShader(object))
			glGetShaderInfoLog(object, log_length, NULL, log);
		else if (glIsProgram(object))
			glGetProgramInfoLog(object, log_length, NULL, log);

		fprintf(stderr, "%s", log);
		delete[] log;
	}

	GLuint compileProgram()
	{
		GLuint program, vertexshader, fragmentshader;

		program = vertexshader = fragmentshader = 0;

		// vertex shader maken en compilen
		vertexshader = glCreateShader(GL_VERTEX_SHADER);
		loadShaderSource("/proc/self/exe/vertex.glsl", vertexshader);
		glCompileShader(vertexshader);

		print_log(vertexshader);

		// fragment shader maken en compilen
		fragmentshader = glCreateShader(GL_FRAGMENT_SHADER);
		loadShaderSource("/proc/self/exe/fragment.glsl", fragmentshader);
		glCompileShader(fragmentshader);

		print_log(fragmentshader);

		// programma maken
		program = glCreateProgram();

		// shaders er aan toevoegen en linken
		glAttachShader(program, vertexshader);
		glAttachShader(program, fragmentshader);
		glLinkProgram(program);

		// verder ruimen we nog wat op
		glDeleteShader(vertexshader);
		glDeleteShader(fragmentshader);

		return program;
	}

	virtual void render(double currentTime)
	{
		static const GLfloat color[] = { 1.0f, 0.4f, 0.0f, 1.0f };
		glClearBufferfv(GL_COLOR, 0, color);

		glUseProgram(program);

		/* glPointSize(20.0f); */

		glDrawArrays(GL_TRIANGLES, 0, 6);
	}

	virtual void shutdown()
	{
		glDeleteProgram(program);
		glDeleteVertexArrays(1, &vertext_array_object);
	}
};

DECLARE_MAIN(probeersel_app);
