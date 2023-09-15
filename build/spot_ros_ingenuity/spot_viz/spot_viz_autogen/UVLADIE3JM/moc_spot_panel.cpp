/****************************************************************************
** Meta object code from reading C++ file 'spot_panel.hpp'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/spot_ros_ingenuity/spot_viz/src/spot_panel.hpp"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'spot_panel.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_spot_viz__ControlPanel_t {
    QByteArrayData data[16];
    char stringdata0[161];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_spot_viz__ControlPanel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_spot_viz__ControlPanel_t qt_meta_stringdata_spot_viz__ControlPanel = {
    {
QT_MOC_LITERAL(0, 0, 22), // "spot_viz::ControlPanel"
QT_MOC_LITERAL(1, 23, 3), // "sit"
QT_MOC_LITERAL(2, 27, 0), // ""
QT_MOC_LITERAL(3, 28, 5), // "stand"
QT_MOC_LITERAL(4, 34, 10), // "claimLease"
QT_MOC_LITERAL(5, 45, 12), // "releaseLease"
QT_MOC_LITERAL(6, 58, 7), // "powerOn"
QT_MOC_LITERAL(7, 66, 8), // "powerOff"
QT_MOC_LITERAL(8, 75, 12), // "sendBodyPose"
QT_MOC_LITERAL(9, 88, 9), // "setMaxVel"
QT_MOC_LITERAL(10, 98, 9), // "startODAS"
QT_MOC_LITERAL(11, 108, 8), // "stopODAS"
QT_MOC_LITERAL(12, 117, 10), // "startSMACH"
QT_MOC_LITERAL(13, 128, 10), // "abortSMACH"
QT_MOC_LITERAL(14, 139, 11), // "enableEStop"
QT_MOC_LITERAL(15, 151, 9) // "hardEStop"

    },
    "spot_viz::ControlPanel\0sit\0\0stand\0"
    "claimLease\0releaseLease\0powerOn\0"
    "powerOff\0sendBodyPose\0setMaxVel\0"
    "startODAS\0stopODAS\0startSMACH\0abortSMACH\0"
    "enableEStop\0hardEStop"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_spot_viz__ControlPanel[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      14,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   84,    2, 0x08 /* Private */,
       3,    0,   85,    2, 0x08 /* Private */,
       4,    0,   86,    2, 0x08 /* Private */,
       5,    0,   87,    2, 0x08 /* Private */,
       6,    0,   88,    2, 0x08 /* Private */,
       7,    0,   89,    2, 0x08 /* Private */,
       8,    0,   90,    2, 0x08 /* Private */,
       9,    0,   91,    2, 0x08 /* Private */,
      10,    0,   92,    2, 0x08 /* Private */,
      11,    0,   93,    2, 0x08 /* Private */,
      12,    0,   94,    2, 0x08 /* Private */,
      13,    0,   95,    2, 0x08 /* Private */,
      14,    0,   96,    2, 0x08 /* Private */,
      15,    0,   97,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void spot_viz::ControlPanel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<ControlPanel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->sit(); break;
        case 1: _t->stand(); break;
        case 2: _t->claimLease(); break;
        case 3: _t->releaseLease(); break;
        case 4: _t->powerOn(); break;
        case 5: _t->powerOff(); break;
        case 6: _t->sendBodyPose(); break;
        case 7: _t->setMaxVel(); break;
        case 8: _t->startODAS(); break;
        case 9: _t->stopODAS(); break;
        case 10: _t->startSMACH(); break;
        case 11: _t->abortSMACH(); break;
        case 12: _t->enableEStop(); break;
        case 13: _t->hardEStop(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject spot_viz::ControlPanel::staticMetaObject = { {
    &rviz::Panel::staticMetaObject,
    qt_meta_stringdata_spot_viz__ControlPanel.data,
    qt_meta_data_spot_viz__ControlPanel,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *spot_viz::ControlPanel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *spot_viz::ControlPanel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_spot_viz__ControlPanel.stringdata0))
        return static_cast<void*>(this);
    return rviz::Panel::qt_metacast(_clname);
}

int spot_viz::ControlPanel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 14)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 14;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 14)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 14;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
