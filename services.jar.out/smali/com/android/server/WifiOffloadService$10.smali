.class Lcom/android/server/WifiOffloadService$10;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1361
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1362
    const-string v5, "WifiOffloadService"

    const-string v6, "onReceive -- WiFiDataReceiver"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1366
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1426
    :cond_1
    :goto_0
    return-void

    .line 1369
    :cond_2
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1371
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1372
    .local v3, info:Landroid/net/NetworkInfo;
    const-string v5, "bssid"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1373
    .local v2, bssid:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "WifiOffloadService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WiFi BSSID :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_3
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1376
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #setter for: Lcom/android/server/WifiOffloadService;->prevWiFiState:Z
    invoke-static {v5, v9}, Lcom/android/server/WifiOffloadService;->access$1302(Lcom/android/server/WifiOffloadService;Z)Z

    .line 1377
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iput-boolean v9, v5, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1378
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1379
    const-string v5, "WifiOffloadService"

    const-string v6, "onReceive -- NetworkInfo.State.CONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_4
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v1

    .line 1382
    .local v1, baseStation:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_5

    if-nez v1, :cond_9

    .line 1388
    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 1390
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v5, v5, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v6, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v6, v6, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v6, v2, v1}, Lcom/android/server/wifi_offload/WifiOffloadDB;->isWiFiDataStored(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1392
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->collectWiFiDetails()V

    .line 1393
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->storeWiFiDetails()V

    .line 1396
    :cond_6
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->access$1200(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1397
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "WifiOffloadService"

    const-string v6, "Timer is running, so reset it when connection is Succuss!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_7
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #setter for: Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z
    invoke-static {v5, v8}, Lcom/android/server/WifiOffloadService;->access$302(Lcom/android/server/WifiOffloadService;Z)Z

    .line 1399
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->access$1200(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1402
    :cond_8
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->stopDataActivityTimer()V

    goto/16 :goto_0

    .line 1385
    :cond_9
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "WifiOffloadService"

    const-string v6, "Setting intel mode scan interval to FALSE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_a
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-boolean v5, v5, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5, v8}, Lcom/android/server/WifiOffloadService;->intelScanMode(Z)Z

    goto :goto_1

    .line 1404
    .end local v1           #baseStation:I
    :cond_b
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1405
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-boolean v5, v5, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z
    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->access$300(Lcom/android/server/WifiOffloadService;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1406
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "WifiOffloadService"

    const-string v6, "WIFI DISCONNECTED : sendEmptyMessageDelayed after 5 min to check Wifi status"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_c
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->access$1200(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;

    move-result-object v5

    const-wide/32 v6, 0x493e0

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1409
    :cond_d
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iput-boolean v8, v5, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1410
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "WifiOffloadService"

    const-string v6, "onReceive -- NetworkInfo.State.DISCONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_e
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->startDataActivityTimer()V

    goto/16 :goto_0

    .line 1414
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_f
    const-string v5, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1415
    const-string v5, "connected"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1416
    .local v4, status:Z
    if-nez v4, :cond_1

    .line 1417
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iput-boolean v8, v5, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1418
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "WifiOffloadService"

    const-string v6, "onReceive -- SUPPLICANT_CONNECTION_CHANGE_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_10
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->startDataActivityTimer()V

    goto/16 :goto_0

    .line 1421
    .end local v4           #status:Z
    :cond_11
    const-string v5, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1422
    iget-object v6, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v5, "newState"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/SupplicantState;

    #setter for: Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v6, v5}, Lcom/android/server/WifiOffloadService;->access$1402(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;

    .line 1423
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "WifiOffloadService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new supplicant state is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v7}, Lcom/android/server/WifiOffloadService;->access$1400(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/SupplicantState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
