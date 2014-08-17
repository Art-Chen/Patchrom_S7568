.class public Landroid/util/GeneralUtil;
.super Ljava/lang/Object;
.source "GeneralUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPixelFromDP(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "nDP"

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 89
    .local v0, d:F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 90
    .local v1, nPX:I
    return v1
.end method

.method public static isPhone()Z
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, mIsPhone:Z
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 42
    .local v1, mWindowManager:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->canStatusBarHide()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, mIsTablet:Z
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 61
    .local v1, mWindowManager:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->canStatusBarHide()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    .line 64
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
