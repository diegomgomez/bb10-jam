// List with context menu project template
#ifndef Spore_HPP_
#define Spore_HPP_

#include <QObject>

namespace bb { namespace cascades { class Application; }}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class Spore : public QObject
{
    Q_OBJECT
public:
    Spore(bb::cascades::Application *app);
    virtual ~Spore() {}
};

#endif /* Spore_HPP_ */
