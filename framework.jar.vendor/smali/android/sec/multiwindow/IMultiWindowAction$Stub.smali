.class public abstract Landroid/sec/multiwindow/IMultiWindowAction$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowAction.java"

# interfaces
.implements Landroid/sec/multiwindow/IMultiWindowAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/IMultiWindowAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/IMultiWindowAction$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.multiwindow.IMultiWindowAction"

.field static final TRANSACTION_actionChangeSize:I = 0x5

.field static final TRANSACTION_actionFinish:I = 0x2

.field static final TRANSACTION_actionForceClosed:I = 0x7

.field static final TRANSACTION_actionPreChangeSize:I = 0x6

.field static final TRANSACTION_actionResize:I = 0x3

.field static final TRANSACTION_actionResume:I = 0x1

.field static final TRANSACTION_actionVisible:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.sec.multiwindow.IMultiWindowAction"

    invoke-virtual {p0, p0, v0}, Landroid/sec/multiwindow/IMultiWindowAction$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/IMultiWindowAction;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.sec.multiwindow.IMultiWindowAction"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/multiwindow/IMultiWindowAction;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/sec/multiwindow/IMultiWindowAction;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/sec/multiwindow/IMultiWindowAction$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/multiwindow/IMultiWindowAction$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 46
    :sswitch_0
    const-string v3, "android.sec.multiwindow.IMultiWindowAction"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "android.sec.multiwindow.IMultiWindowAction"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowAction$Stub;->actionResume()V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    :sswitch_2
    const-string v3, "android.sec.multiwindow.IMultiWindowAction"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowAction$Stub;->actionFinish()V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    :sswitch_3
    const-string v3, "android.sec.multiwindow.IMultiWindowAction"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowAction$Stub;->actionResize()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    :sswitch_4
    const-string v4, "android.sec.multiwindow.IMultiWindowAction"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 75
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowAction$Stub;->actionVisible(Z)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_0
    move v0, v3

    .line 74
    goto :goto_1

    .line 81
    :sswitch_5
    const-string v3, "android.sec.multiwindow.IMultiWindowAction"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 89
    .local v0, _arg0:Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowAction$Stub;->actionChangeSize(Landroid/graphics/Rect;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v0           #_arg0:Landroid/graphics/Rect;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/graphics/Rect;
    goto :goto_2

    .line 95
    .end local v0           #_arg0:Landroid/graphics/Rect;
    :sswitch_6
    const-string v4, "android.sec.multiwindow.IMultiWindowAction"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 104
    .restart local v0       #_arg0:Landroid/graphics/Rect;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 105
    .local v1, _arg1:Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowAction$Stub;->actionPreChangeSize(Landroid/graphics/Rect;Z)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 101
    .end local v0           #_arg0:Landroid/graphics/Rect;
    .end local v1           #_arg1:Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/graphics/Rect;
    goto :goto_3

    :cond_3
    move v1, v3

    .line 104
    goto :goto_4

    .line 111
    .end local v0           #_arg0:Landroid/graphics/Rect;
    :sswitch_7
    const-string v3, "android.sec.multiwindow.IMultiWindowAction"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowAction$Stub;->actionForceClosed()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
