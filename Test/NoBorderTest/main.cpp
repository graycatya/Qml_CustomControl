#include <QGuiApplication>
#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include<QQmlContext>
#include<QQuickWidget>

int main(int argc, char *argv[])
{
    //QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    QQuickView viewer;
    viewer.setFlags(Qt::FramelessWindowHint);

    //viewer.setColor(QColor(Qt::transparent));
    //将viewer设置为main.qml属性
    viewer.rootContext()->setContextProperty("mainwindow",&viewer);

    viewer.setSource(QStringLiteral("qrc:/main.qml"));
    viewer.setTitle(QStringLiteral("Tycho crater on the Moon (height exaggerated)"));
    viewer.setResizeMode(QQuickView::SizeRootObjectToView);
    viewer.show();

    /*
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine("qrc:/main.qml");*/

    return app.exec();
}
