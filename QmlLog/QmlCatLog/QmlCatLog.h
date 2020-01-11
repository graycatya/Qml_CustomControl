#pragma once
#include "../Log/CatLog_Sington.h"
#include <QObject>
#include <QString>

namespace QMLCATLOG
{
    #define _LOG_FILE { \
        CATLOG::CatLog::enqueue([file, buff](){ \
        std::string file_path = file.toStdString() + ".log"; \
        std::ofstream outfile; \
        outfile.open(file_path, std::ios::out | std::ios::app ); \
        outfile << buff.toStdString() << std::endl; \
        outfile.close(); \
        }); \
    }

    #define _LOG_PRINT { \
        CATLOG::CatLog::enqueue([buff](){ \
            std::cout << buff.toStdString() << std::endl; \
            std::cout.flush(); \
        }); \
    }

    class CatLog : public QObject
    {
        Q_OBJECT
        public:
            static CatLog* Instance() noexcept
            {
                if(_instance == nullptr)
                {
                    std::unique_lock<std::mutex>lock(*m_pMutex);
                    if(_instance == nullptr)
                    {
                        _instance = new CatLog();
                        CATLOG::CatLog::Instance();
                    }
                }
                return _instance;
            }

            static void Delete( void ) noexcept
            {
                if(_instance != nullptr)
                {
                    CATLOG::CatLog::Delete();
                    delete _instance;
                    _instance = nullptr;
                }
            }
            Q_INVOKABLE void debug_file(QString path_file, QString msg = "") noexcept
            {
                QString file = path_file;
                QString buff = QString::fromStdString(LOG_MESSAGE<LEVEL::DEBUG>::Log_Head({msg.toStdString()}));
                _LOG_FILE;
            }

            Q_INVOKABLE void info_file(QString path_file, QString msg = "") noexcept
            {
                QString file = path_file;
                QString buff = QString::fromStdString(LOG_MESSAGE<LEVEL::INFO>::Log_Head({msg.toStdString()}));
                _LOG_FILE;
            }

            Q_INVOKABLE void warn_file(QString path_file, QString msg = "") noexcept
            {
                QString file = path_file;
                QString buff = QString::fromStdString(LOG_MESSAGE<LEVEL::WARN>::Log_Head({msg.toStdString()}));
                _LOG_FILE;
            }

            Q_INVOKABLE void error_file(QString path_file, QString msg = "") noexcept
            {
                QString file = path_file;
                QString buff = QString::fromStdString(LOG_MESSAGE<LEVEL::ERROR>::Log_Head({msg.toStdString()}));
                _LOG_FILE;
            }

            Q_INVOKABLE void alarm_file(QString path_file, QString msg = "") noexcept
            {
                QString file = path_file;
                QString buff = QString::fromStdString(LOG_MESSAGE<LEVEL::ALARM>::Log_Head({msg.toStdString()}));
                _LOG_FILE;
            }

            Q_INVOKABLE void fatal_file(QString path_file, QString msg = "") noexcept
            {
                QString file = path_file;
                QString buff = QString::fromStdString(LOG_MESSAGE<LEVEL::FATAL>::Log_Head({msg.toStdString()}));
                _LOG_FILE;
            }

            Q_INVOKABLE void debug_print(QString msg = "") noexcept
            {
                QString buff = QString::fromStdString(LOG_MESSAGE<LEVEL::DEBUG>::Log_Head({msg.toStdString()}));
                _LOG_PRINT;
            }

            Q_INVOKABLE void info_print(QString msg = "") noexcept
            {
                QString buff = QString::fromStdString(LOG_MESSAGE<LEVEL::INFO>::Log_Head({msg.toStdString()}));
                _LOG_PRINT;
            }

            Q_INVOKABLE void warn_print(QString msg = "") noexcept
            {
                QString buff = QString::fromStdString(LOG_MESSAGE<LEVEL::WARN>::Log_Head({msg.toStdString()}));
                _LOG_PRINT;
            }

            Q_INVOKABLE void error_print(QString msg = "") noexcept
            {
                QString buff = QString::fromStdString(LOG_MESSAGE<LEVEL::ERROR>::Log_Head({msg.toStdString()}));
                _LOG_PRINT;
            }

            Q_INVOKABLE void alarm_print(QString msg = "") noexcept
            {
                QString buff = QString::fromStdString(LOG_MESSAGE<LEVEL::ALARM>::Log_Head({msg.toStdString()}));
                _LOG_PRINT;
            }

            Q_INVOKABLE void fatal_print(QString msg = "") noexcept
            {
                QString buff = QString::fromStdString(LOG_MESSAGE<LEVEL::FATAL>::Log_Head({msg.toStdString()}));
                _LOG_PRINT;
            }

        private: 
            CatLog() {}
            ~CatLog() {}
            CatLog(const CatLog*)  = delete;

        private:
            static CatLog* _instance;
            static std::mutex* m_pMutex;

    };

};
