.class public Landroid/sec/enterprise/kioskmode/KioskMode;
.super Ljava/lang/Object;
.source "KioskMode.java"


# static fields
.field public static MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "KioskMode"

.field public static TASK_MANAGER_PKGNAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "com.sec.android.app.controlpanel"

    sput-object v0, Landroid/sec/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    const-string v0, "com.sec.minimode.taskcloser"

    sput-object v0, Landroid/sec/enterprise/kioskmode/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHardwareKeyAllowed(IZ)Z
    .locals 3
    .parameter "hwKeyId"
    .parameter "showMsg"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->isHardwareKeyAllowed(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "PXY-isHardwareKeyAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTaskManagerAllowed()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/sec/enterprise/IEDMProxy;->isTaskManagerAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "PXY-isTaskManagerAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTaskManagerAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isTaskManagerAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "PXY-isTaskManagerAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method
