.class public Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;
.super Landroid/app/Activity;
.source "AppRunnOverWifiDialog.java"


# static fields
.field private static DBG:Z = false

.field private static final DBG_ERR:Z = true

.field private static final TAG:Ljava/lang/String; = "AppRunnOverWifiDialog"


# instance fields
.field public ACTIVITY_ON_TOP:I

.field public USER_RESPONSE:I

.field private am:Landroid/app/ActivityManager;

.field private currentTask:I

.field private packageName:Ljava/lang/String;

.field private taskID:I

.field public wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    iput v2, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->USER_RESPONSE:I

    const/16 v0, 0x61

    iput v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->ACTIVITY_ON_TOP:I

    iput-object v1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->am:Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->packageName:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->taskID:I

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->DBG:Z

    return v0
.end method

.method private getTopActivityFromStack()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->am:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-nez v3, :cond_0

    const-string v3, "wifioffload"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiOffloadManager;

    iput-object v3, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->USER_RESPONSE:I

    const v3, 0x102027a

    invoke-virtual {p0, v3}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .local v1, button_ok:Landroid/widget/Button;
    new-instance v3, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$1;

    invoke-direct {v3, p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$1;-><init>(Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x102027b

    invoke-virtual {p0, v3}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .local v0, button_always_turn_on:Landroid/widget/Button;
    new-instance v3, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$2;

    invoke-direct {v3, p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$2;-><init>(Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x102027c

    invoke-virtual {p0, v3}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .local v2, button_turn_off:Landroid/widget/Button;
    new-instance v3, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;

    invoke-direct {v3, p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;-><init>(Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v3, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "AppRunnOverWifiDialog"

    const-string v4, "notify that 3rd dialog on create has completed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiOffloadManager;->startDontUseWiFiPressedTimer()V

    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    sget v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiOffloadManager;->setAppRunOverWiFiResult(IZ)V

    invoke-virtual {p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v0, 0x109002a

    invoke-virtual {p0, v0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->initialize()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->requestWindowFeature(I)Z

    const v0, 0x109002a

    invoke-virtual {p0, v0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->setContentView(I)V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->am:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->taskID:I

    invoke-virtual {p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_offload_monitoring"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->DBG:Z

    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-nez v0, :cond_0

    const-string v0, "wifioffload"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiOffloadManager;

    iput-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->initialize()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    iget v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->USER_RESPONSE:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    sget v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiOffloadManager;->setAppRunOverWiFiResult(IZ)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->USER_RESPONSE:I

    iget v1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->ACTIVITY_ON_TOP:I

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppRunnOverWifiDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Top Activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->taskID:I

    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    iget v1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->taskID:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiOffloadManager;->checkAppNeedsMoveToFront(I)V

    :cond_1
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .prologue
    sget-boolean v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppRunnOverWifiDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Top Activity from user leave hint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->ACTIVITY_ON_TOP:I

    iput v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->USER_RESPONSE:I

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    sget v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiOffloadManager;->setAppRunOverWiFiResult(IZ)V

    invoke-virtual {p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->finish()V

    goto :goto_0
.end method
