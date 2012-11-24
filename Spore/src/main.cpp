// Grid view with detail project template
#include "Spore.hpp"

#include <bb/cascades/Application>
#include <stdio.h>
#include <QLocale>
#include <QTranslator>

using namespace bb::cascades;

void myMessageOutput(QtMsgType type, const char* msg) {
	fprintf(stdout, "%s\n", msg);
	fflush(stdout);
}

int main(int argc, char **argv) {
	// this is where the server is started etc
	Application app(argc, argv);
	qInstallMsgHandler(myMessageOutput);

	// localization support
	QTranslator translator;
	QString locale_string = QLocale().name();
	QString filename = QString("Spore_%1").arg(locale_string);
	if (translator.load(filename, "app/native/qm")) {
		app.installTranslator(&translator);
	}

	// create the application pane object to init UI etc.
	new Spore(&app);

	// we complete the transaction started in the app constructor and start the client event loop here
	return Application::exec();
	// when loop is exited the Application deletes the scene which deletes all its children (per qt rules for children)
}
