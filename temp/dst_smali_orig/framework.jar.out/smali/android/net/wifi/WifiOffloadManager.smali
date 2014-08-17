.class public Landroid/net/wifi/WifiOffloadManager;
.super Ljava/lang/Object;
.source "WifiOffloadManager.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiOffloadManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/wifi/IWifiOffloadManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/IWifiOffloadManager;Landroid/os/Handler;)V
    .locals 0
    .parameter "service"
    .parameter "handler"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    iput-object p2, p0, Landroid/net/wifi/WifiOffloadManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public canAppOffload(Ljava/lang/String;)Z
    .locals 4
    .parameter "pkgName"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->canAppOffload(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while checking canAppOffload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkAppNeedsMoveToFront(I)V
    .locals 3
    .parameter "taskID"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->checkAppNeedsMoveToFront(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in checkAppNeedsMoveToFront"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkMobileNetwork()I
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->isMobileDataActive()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking data activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAllAPs()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->clearAllAccessPoints()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while clear all AP\'s"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteWifidetails(Ljava/lang/String;)I
    .locals 3
    .parameter "networkName"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->deleteNetwork(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while deleteWifidetails"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public doOffloadStuff(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "pkgName"
    .parameter "action"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiOffloadManager;->doOffloadStuff(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in doOffloadStuff"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAvailableStoredWifi()[Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getAvailableSSIDNames()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while getAvailableStoredWifi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentBaseStationID()I
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getCDMABaseStationID()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while getCurrentBaseStationID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastPkgName()Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getLastPkgName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in getLastPkgName"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastWifiScannedTime()J
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getLastWifiScannedTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in getLastWifiScannedTime"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public isAppInWiFiBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->isAppInWiFiBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking 3g only app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAppRequiresWifi(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->isWifiOnlyApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking 3g only app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAppinWhiteList(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->isAppinWhiteList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking 3g only app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDontUseWifiPressed()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->isDontUseWifiPressed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking isDontuseWifiPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIntelScanModeEnabled()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->isIntelScanModeEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in isIntelScanModeEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIntelWifiEnabled()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getIntelligentWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking for intelligent mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiConnected()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->isWifiConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking isWifiConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyDialogDisplayed(I)V
    .locals 3
    .parameter "dialogNum"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->notifyDialogDisplayed(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in notifyDialogDisplayed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetNeverTurnOnWifi()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->resetNeverTurnOnWifi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while resetNeverTurnOnWifi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetTestStationID()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->resetCurrentTestBaseStationID()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while resetTestStationID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAppRunOverWiFiResult(IZ)V
    .locals 3
    .parameter "value"
    .parameter "isDontShowPopup"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiOffloadManager;->setAppRunOverWiFiResult(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while setting AppRunOverWiFiResult"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDontuseWifiPressed(Z)V
    .locals 3
    .parameter "isPressed"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->setDontuseWifiPressed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while setting DontuseWifiPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIntelScanMode(Z)Z
    .locals 3
    .parameter "intelMode"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->intelScanMode(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while setting intelligent mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNeverTurnOnWifi()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiOffloadManager;->setNeverTurnOnWifi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTestCurrentBaseStationID(I)V
    .locals 3
    .parameter "baseStationID"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->setCurrentTestBaseStationID(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while setTestCurrentBaseStationID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWiFiDialogStatus(I)V
    .locals 3
    .parameter "stationID"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->updateDialogStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while trying to set WiFiDialog sStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDontUseWiFiPressedTimer()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->startDontUseWiFiPressedTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while startDontUseWiFiPressedTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startWifiDataActivityTimer()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->startDataActivityTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while startDataActivityTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopWifiDataActivityTimer()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->stopDataActivityTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while stopWifiDataActivityTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public tempBlockPopup(IZ)Z
    .locals 3
    .parameter "stationID"
    .parameter "enableBlock"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiOffloadManager;->blockWifiPopup(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while blocking temp popup"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public tryToTurnOnWifi(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "isWaitrequired"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiOffloadManager;->tryToTurnOnWifi(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while trying to switch on Wi-Fi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateNewBaseStations(Ljava/lang/String;I)V
    .locals 3
    .parameter "ssID"
    .parameter "stationID"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiOffloadManager;->updateBaseStationIDs(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while updateNewBaseStations"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public wasWiFiOn()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->wasWiFiReallyOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking if wifi is on or off"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
