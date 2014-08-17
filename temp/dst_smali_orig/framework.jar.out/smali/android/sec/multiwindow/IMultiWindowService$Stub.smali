.class public abstract Landroid/sec/multiwindow/IMultiWindowService$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowService.java"

# interfaces
.implements Landroid/sec/multiwindow/IMultiWindowService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/IMultiWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/IMultiWindowService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.multiwindow.IMultiWindowService"

.field static final TRANSACTION_arrangeWindows:I = 0x2e

.field static final TRANSACTION_capture:I = 0x2f

.field static final TRANSACTION_changFocus:I = 0x3d

.field static final TRANSACTION_destroyActivity:I = 0x42

.field static final TRANSACTION_exchangeSplitScreens:I = 0x31

.field static final TRANSACTION_finishActivity:I = 0x40

.field static final TRANSACTION_finishAllWindow:I = 0x2d

.field static final TRANSACTION_finishAppPid:I = 0x41

.field static final TRANSACTION_fitToHalf:I = 0xf

.field static final TRANSACTION_getHeight:I = 0x4

.field static final TRANSACTION_getMinimumSize:I = 0xc

.field static final TRANSACTION_getMultiLayout:I = 0x46

.field static final TRANSACTION_getMultiWindowList:I = 0x1c

.field static final TRANSACTION_getMultiWindowListOwner:I = 0x23

.field static final TRANSACTION_getMultiWindowListOwnerList:I = 0x24

.field static final TRANSACTION_getMultiWindowType:I = 0x44

.field static final TRANSACTION_getPinupWindow:I = 0x18

.field static final TRANSACTION_getPositionOfWindow:I = 0x3b

.field static final TRANSACTION_getPositionOfWindowWithTaskId:I = 0x3c

.field static final TRANSACTION_getResumedWindow:I = 0x2a

.field static final TRANSACTION_getRunningWindowList:I = 0x2b

.field static final TRANSACTION_getSplitList:I = 0x11

.field static final TRANSACTION_getVisibleWindowList:I = 0x2c

.field static final TRANSACTION_getWidth:I = 0x3

.field static final TRANSACTION_getWindowOfPackageName:I = 0x48

.field static final TRANSACTION_initWindowClassInfo:I = 0x36

.field static final TRANSACTION_isDuplicated:I = 0x15

.field static final TRANSACTION_isMaximized:I = 0x8

.field static final TRANSACTION_isMaximizedWithTaskId:I = 0x9

.field static final TRANSACTION_isMultiWindow:I = 0x27

.field static final TRANSACTION_isMultiWindowOwner:I = 0x25

.field static final TRANSACTION_isMultiWindowServiceEnabled:I = 0x47

.field static final TRANSACTION_isPermissionOff:I = 0x30

.field static final TRANSACTION_isRunning:I = 0x28

.field static final TRANSACTION_isSplitWindowFullSreen:I = 0x49

.field static final TRANSACTION_isStartingSplitScreen:I = 0x16

.field static final TRANSACTION_isVisible:I = 0x29

.field static final TRANSACTION_maximize:I = 0x5

.field static final TRANSACTION_minimize:I = 0x7

.field static final TRANSACTION_notifyFinished:I = 0x35

.field static final TRANSACTION_notifyForceFinished:I = 0x4a

.field static final TRANSACTION_notifySIP:I = 0x10

.field static final TRANSACTION_notifyStarted:I = 0x34

.field static final TRANSACTION_orientationChangeRestore:I = 0xd

.field static final TRANSACTION_orientationChecked:I = 0xe

.field static final TRANSACTION_pauseChangeInformation:I = 0x3f

.field static final TRANSACTION_pinupWindow:I = 0x17

.field static final TRANSACTION_postResume:I = 0x3e

.field static final TRANSACTION_regWindowClass:I = 0x39

.field static final TRANSACTION_regWindowClassAction:I = 0x3a

.field static final TRANSACTION_registerMultiWindow:I = 0x19

.field static final TRANSACTION_registerMultiWindowOwner:I = 0x1d

.field static final TRANSACTION_registerMultiWindowOwnerWithMinList:I = 0x20

.field static final TRANSACTION_registerMultiWindowWithMin:I = 0x1e

.field static final TRANSACTION_registerMultiWindowWithMinAndRatio:I = 0x1f

.field static final TRANSACTION_removeMultiWindow:I = 0x1b

.field static final TRANSACTION_removeMultiWindowOwner:I = 0x21

.field static final TRANSACTION_removeMultiWindowOwnerItem:I = 0x22

.field static final TRANSACTION_restore:I = 0x6

.field static final TRANSACTION_resume:I = 0x26

.field static final TRANSACTION_screenShot:I = 0x4c

.field static final TRANSACTION_setMinimumSize:I = 0xb

.field static final TRANSACTION_setMultiLayout:I = 0x45

.field static final TRANSACTION_setMultiWindowType:I = 0x43

.field static final TRANSACTION_setPermissionOff:I = 0x4b

.field static final TRANSACTION_setPositionWindow:I = 0xa

.field static final TRANSACTION_setPreferenceValue:I = 0x4d

.field static final TRANSACTION_showSwitchWindowGuideDialog:I = 0x4e

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_startDualWindow:I = 0x12

.field static final TRANSACTION_startMultiWindow:I = 0x37

.field static final TRANSACTION_startMultiWindowWithTaskId:I = 0x38

.field static final TRANSACTION_startSplitScreens:I = 0x32

.field static final TRANSACTION_startSplitScreensForLauncher:I = 0x33

.field static final TRANSACTION_startSplitWindowWithDirection:I = 0x13

.field static final TRANSACTION_startSplitWindowWithDirectionReplaced:I = 0x14

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_unRegisterMultiWindow:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p0, p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/IMultiWindowService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.sec.multiwindow.IMultiWindowService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/multiwindow/IMultiWindowService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/sec/multiwindow/IMultiWindowService;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/sec/multiwindow/IMultiWindowService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    :sswitch_0
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, _arg0:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->start(Landroid/content/Intent;)Z

    move-result v5

    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v5           #_result:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_1

    .end local v0           #_arg0:Landroid/content/Intent;
    :sswitch_2
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->stop(Landroid/content/ComponentName;I)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getWidth(Landroid/content/ComponentName;)I

    move-result v5

    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_4
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getHeight(Landroid/content/ComponentName;)I

    move-result v5

    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_4

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_5
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_5
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->maximize(Landroid/content/ComponentName;)Z

    move-result v5

    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_6

    move v7, v8

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_5

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_6
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_6
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->restore(Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_8

    move v7, v8

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_6

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_7
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->minimize(Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_a

    move v7, v8

    :cond_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_7

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_8
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_8
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isMaximized(Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_c

    move v7, v8

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_8

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_9
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isMaximizedWithTaskId(Landroid/content/ComponentName;I)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_e

    move v7, v8

    :cond_e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_9

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_a
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_10

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_11

    sget-object v9, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .local v1, _arg1:Landroid/graphics/Rect;
    :goto_b
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->setPositionWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v5

    .local v5, _result:Landroid/sec/multiwindow/MultiWindowObject;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_12

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v8}, Landroid/sec/multiwindow/MultiWindowObject;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/graphics/Rect;
    .end local v5           #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_10
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/graphics/Rect;
    goto :goto_b

    .restart local v5       #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_12
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/graphics/Rect;
    .end local v5           #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :sswitch_b
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_14

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg2:I
    invoke-virtual {p0, v0, v1, v3}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->setMinimumSize(Landroid/content/ComponentName;II)Z

    move-result v5

    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_13

    move v7, v8

    :cond_13
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v3           #_arg2:I
    .end local v5           #_result:Z
    :cond_14
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_c

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_c
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_15

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_d
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getMinimumSize(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v5

    .local v5, _result:Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_16

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v8}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Landroid/graphics/Rect;
    :cond_15
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_d

    .restart local v5       #_result:Landroid/graphics/Rect;
    :cond_16
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Landroid/graphics/Rect;
    :sswitch_d
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_18

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->orientationChangeRestore(Landroid/content/ComponentName;I)Z

    move-result v5

    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_17

    move v7, v8

    :cond_17
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_18
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_e

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_e
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->orientationChecked()Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_19

    move v7, v8

    :cond_19
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v5           #_result:Z
    :sswitch_f
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1b

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->fitToHalf(Landroid/content/ComponentName;I)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_1a

    move v7, v8

    :cond_1a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_1b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_f

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_10
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->notifySIP(I)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_1c

    move v7, v8

    :cond_1c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v5           #_result:Z
    :sswitch_11
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getSplitList()Ljava/util/List;

    move-result-object v6

    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_12
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1e

    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, _arg0:Landroid/content/Intent;
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1f

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, _arg1:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->startDualWindow(Landroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_1d

    move v7, v8

    :cond_1d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_1e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_10

    :cond_1f
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_11

    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_13
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_21

    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .restart local v0       #_arg0:Landroid/content/Intent;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->startSplitWindowWithDirection(Landroid/content/Intent;I)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_20

    move v7, v8

    :cond_20
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_21
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_12

    .end local v0           #_arg0:Landroid/content/Intent;
    :sswitch_14
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_23

    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .restart local v0       #_arg0:Landroid/content/Intent;
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_24

    move v3, v8

    .local v3, _arg2:Z
    :goto_14
    invoke-virtual {p0, v0, v1, v3}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->startSplitWindowWithDirectionReplaced(Landroid/content/Intent;IZ)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_22

    move v7, v8

    :cond_22
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:I
    .end local v3           #_arg2:Z
    .end local v5           #_result:Z
    :cond_23
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_13

    .restart local v1       #_arg1:I
    :cond_24
    move v3, v7

    goto :goto_14

    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:I
    :sswitch_15
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_26

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_15
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isDuplicated(Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_25

    move v7, v8

    :cond_25
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_26
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_15

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_16
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_28

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_16
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isStartingSplitScreen(Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_27

    move v7, v8

    :cond_27
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_28
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_16

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_17
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2a

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2b

    move v1, v8

    .local v1, _arg1:Z
    :goto_18
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->pinupWindow(Landroid/content/ComponentName;Z)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_29

    move v7, v8

    :cond_29
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    .end local v5           #_result:Z
    :cond_2a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_17

    :cond_2b
    move v1, v7

    goto :goto_18

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_18
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getPinupWindow()Landroid/content/ComponentName;

    move-result-object v5

    .local v5, _result:Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_2c

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v8}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_2c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v5           #_result:Landroid/content/ComponentName;
    :sswitch_19
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2e

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_19
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->registerMultiWindow(Landroid/content/ComponentName;)Z

    move-result v5

    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_2d

    move v7, v8

    :cond_2d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_2e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_19

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_1a
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_30

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1a
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->unRegisterMultiWindow(Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_2f

    move v7, v8

    :cond_2f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_30
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1a

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_1b
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_32

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1b
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->removeMultiWindow(Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_31

    move v7, v8

    :cond_31
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_32
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1b

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_1c
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getMultiWindowList()Ljava/util/List;

    move-result-object v6

    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_1d
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_34

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_35

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, _arg1:Landroid/content/ComponentName;
    :goto_1d
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->registerMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_33

    move v7, v8

    :cond_33
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_34
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1c

    :cond_35
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_1d

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_1e
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_37

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg2:I
    invoke-virtual {p0, v0, v1, v3}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->registerMultiWindowWithMin(Landroid/content/ComponentName;II)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_36

    move v7, v8

    :cond_36
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v3           #_arg2:I
    .end local v5           #_result:Z
    :cond_37
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1e

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_1f
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_39

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3a

    move v4, v8

    .local v4, _arg3:Z
    :goto_20
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->registerMultiWindowWithMinAndRatio(Landroid/content/ComponentName;IIZ)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_38

    move v7, v8

    :cond_38
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Z
    .end local v5           #_result:Z
    :cond_39
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1f

    .restart local v1       #_arg1:I
    .restart local v3       #_arg2:I
    :cond_3a
    move v4, v7

    goto :goto_20

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_20
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3c

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_21
    sget-object v9, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p0, v0, v2}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->registerMultiWindowOwnerWithMinList(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_3b

    move v7, v8

    :cond_3b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v5           #_result:Z
    :cond_3c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_21

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_21
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3e

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3f

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, _arg1:Landroid/content/ComponentName;
    :goto_23
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->removeMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_3d

    move v7, v8

    :cond_3d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_3e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_22

    :cond_3f
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_23

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_22
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_41

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_24
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->removeMultiWindowOwnerItem(Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_40

    move v7, v8

    :cond_40
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_41
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_24

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_23
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_42

    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_25
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getMultiWindowListOwner(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v6

    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_42
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_25

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_24
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getMultiWindowListOwnerList()Ljava/util/List;

    move-result-object v6

    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_25
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_44

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_45

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    :goto_27
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_43

    move v7, v8

    :cond_43
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_44
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_26

    :cond_45
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_27

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_26
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_47

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/sec/multiwindow/IMultiWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/IMultiWindowListener;

    move-result-object v1

    .local v1, _arg1:Landroid/sec/multiwindow/IMultiWindowListener;
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_46

    move v7, v8

    :cond_46
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/sec/multiwindow/IMultiWindowListener;
    .end local v5           #_result:Z
    :cond_47
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_28

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_27
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_49

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_29
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_48

    move v7, v8

    :cond_48
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_49
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_29

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_28
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4b

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_2a
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isRunning(Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_4a

    move v7, v8

    :cond_4a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_4b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2a

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_29
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4d

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_2b
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isVisible(Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_4c

    move v7, v8

    :cond_4c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_4d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2b

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_2a
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getResumedWindow()Landroid/content/ComponentName;

    move-result-object v5

    .local v5, _result:Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_4e

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v8}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_4e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v5           #_result:Landroid/content/ComponentName;
    :sswitch_2b
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getRunningWindowList()Ljava/util/List;

    move-result-object v6

    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_2c
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getVisibleWindowList()Ljava/util/List;

    move-result-object v6

    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_2d
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->finishAllWindow()Z

    move-result v5

    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_4f

    move v7, v8

    :cond_4f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v5           #_result:Z
    :sswitch_2e
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->arrangeWindows(I)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_50

    move v7, v8

    :cond_50
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v5           #_result:Z
    :sswitch_2f
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_51

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_52

    sget-object v9, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .local v1, _arg1:Landroid/graphics/Rect;
    :goto_2d
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->capture(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, _result:Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_53

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v8}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/graphics/Rect;
    .end local v5           #_result:Landroid/graphics/Bitmap;
    :cond_51
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2c

    :cond_52
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/graphics/Rect;
    goto :goto_2d

    .restart local v5       #_result:Landroid/graphics/Bitmap;
    :cond_53
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/graphics/Rect;
    .end local v5           #_result:Landroid/graphics/Bitmap;
    :sswitch_30
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isPermissionOff()Z

    move-result v5

    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_54

    move v7, v8

    :cond_54
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v5           #_result:Z
    :sswitch_31
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->exchangeSplitScreens()Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_55

    move v7, v8

    :cond_55
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v5           #_result:Z
    :sswitch_32
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_57

    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, _arg0:Landroid/content/Intent;
    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_58

    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, _arg1:Landroid/content/Intent;
    :goto_2f
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_56

    move v7, v8

    :cond_56
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:Landroid/content/Intent;
    .end local v5           #_result:Z
    :cond_57
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_2e

    :cond_58
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/Intent;
    goto :goto_2f

    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:Landroid/content/Intent;
    :sswitch_33
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5a

    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .restart local v0       #_arg0:Landroid/content/Intent;
    :goto_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5b

    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .restart local v1       #_arg1:Landroid/content/Intent;
    :goto_31
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->startSplitScreensForLauncher(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_59

    move v7, v8

    :cond_59
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:Landroid/content/Intent;
    .end local v5           #_result:Z
    :cond_5a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_30

    :cond_5b
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/Intent;
    goto :goto_31

    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:Landroid/content/Intent;
    :sswitch_34
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5d

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->notifyStarted(Landroid/content/ComponentName;I)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_5c

    move v7, v8

    :cond_5c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_5d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_32

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_35
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5f

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->notifyFinished(Landroid/content/ComponentName;I)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_5e

    move v7, v8

    :cond_5e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_5f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_33

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_36
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_60

    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->initWindowClassInfo(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_60
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_34

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_37
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_62

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_63

    move v1, v8

    .local v1, _arg1:Z
    :goto_36
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->startMultiWindow(Landroid/content/ComponentName;Z)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_61

    move v7, v8

    :cond_61
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    .end local v5           #_result:Z
    :cond_62
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_35

    :cond_63
    move v1, v7

    goto :goto_36

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_38
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_65

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_66

    move v3, v8

    .local v3, _arg2:Z
    :goto_38
    invoke-virtual {p0, v0, v1, v3}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->startMultiWindowWithTaskId(Landroid/content/ComponentName;IZ)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_64

    move v7, v8

    :cond_64
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v3           #_arg2:Z
    .end local v5           #_result:Z
    :cond_65
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_37

    .restart local v1       #_arg1:I
    :cond_66
    move v3, v7

    goto :goto_38

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :sswitch_39
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_68

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_39
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->regWindowClass(Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_67

    move v7, v8

    :cond_67
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_68
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_39

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3a
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6a

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/sec/multiwindow/IMultiWindowAction$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v1

    .local v1, _arg1:Landroid/sec/multiwindow/IMultiWindowAction;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg2:I
    invoke-virtual {p0, v0, v1, v3}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->regWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_69

    move v7, v8

    :cond_69
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/sec/multiwindow/IMultiWindowAction;
    .end local v3           #_arg2:I
    .end local v5           #_result:Z
    :cond_6a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3a

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3b
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6b

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3b
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getPositionOfWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v5

    .local v5, _result:Landroid/sec/multiwindow/MultiWindowObject;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_6c

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v8}, Landroid/sec/multiwindow/MultiWindowObject;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_6b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3b

    .restart local v5       #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_6c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :sswitch_3c
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6d

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getPositionOfWindowWithTaskId(Landroid/content/ComponentName;I)Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v5

    .restart local v5       #_result:Landroid/sec/multiwindow/MultiWindowObject;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_6e

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v8}, Landroid/sec/multiwindow/MultiWindowObject;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_6d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3c

    .restart local v1       #_arg1:I
    .restart local v5       #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_6e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :sswitch_3d
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6f

    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->changFocus(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_6f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3d

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3e
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_71

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->postResume(Landroid/content/ComponentName;I)Z

    move-result v5

    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_70

    move v7, v8

    :cond_70
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_71
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3e

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3f
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_73

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3f
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->pauseChangeInformation(Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_72

    move v7, v8

    :cond_72
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_73
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3f

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_40
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_75

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->finishActivity(Landroid/content/ComponentName;I)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_74

    move v7, v8

    :cond_74
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_75
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_40

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_41
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->finishAppPid(I)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_76

    move v7, v8

    :cond_76
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v5           #_result:Z
    :sswitch_42
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_78

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->destroyActivity(Landroid/content/ComponentName;I)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_77

    move v7, v8

    :cond_77
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_78
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_41

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_43
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->setMultiWindowType(I)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_79

    move v7, v8

    :cond_79
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v5           #_result:Z
    :sswitch_44
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getMultiWindowType()I

    move-result v5

    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v5           #_result:I
    :sswitch_45
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7b

    move v0, v8

    .local v0, _arg0:Z
    :goto_42
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->setMultiLayout(Z)Z

    move-result v5

    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_7a

    move v7, v8

    :cond_7a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v5           #_result:Z
    :cond_7b
    move v0, v7

    goto :goto_42

    :sswitch_46
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getMultiLayout()Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_7c

    move v7, v8

    :cond_7c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v5           #_result:Z
    :sswitch_47
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isMultiWindowServiceEnabled()Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_7d

    move v7, v8

    :cond_7d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v5           #_result:Z
    :sswitch_48
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7e

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_43
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getWindowOfPackageName(Landroid/content/ComponentName;)Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v5

    .local v5, _result:Landroid/sec/multiwindow/MultiWindowObject;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_7f

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v8}, Landroid/sec/multiwindow/MultiWindowObject;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_7e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_43

    .restart local v5       #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_7f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :sswitch_49
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isSplitWindowFullSreen()Z

    move-result v5

    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_80

    move v7, v8

    :cond_80
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v5           #_result:Z
    :sswitch_4a
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_82

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_44
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->notifyForceFinished(Landroid/content/ComponentName;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_81

    move v7, v8

    :cond_81
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_82
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_44

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_4b
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_83

    move v0, v8

    .local v0, _arg0:Z
    :goto_45
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->setPermissionOff(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_83
    move v0, v7

    goto :goto_45

    :sswitch_4c
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_84

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_46
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->screenShot(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, _result:Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_85

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v8}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Landroid/graphics/Bitmap;
    :cond_84
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_46

    .restart local v5       #_result:Landroid/graphics/Bitmap;
    :cond_85
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Landroid/graphics/Bitmap;
    :sswitch_4d
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_86

    move v0, v8

    .local v0, _arg0:Z
    :goto_47
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->setPreferenceValue(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_86
    move v0, v7

    goto :goto_47

    :sswitch_4e
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->showSwitchWindowGuideDialog()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
