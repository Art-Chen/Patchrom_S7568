.class Lcom/android/server/WifiService$8;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 5
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, wifiSleepPolicy:I
    if-ne v0, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$8;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .local v5, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "wifi_idle_ms"

    const-wide/32 v22, 0xdbba0

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v11

    .local v11, idleMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "stay_on_while_plugged_in"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .local v17, stayAwakeConditions:I
    const-string v20, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v21 .. v21}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->access$2902(Lcom/android/server/WifiService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$3000(Lcom/android/server/WifiService;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    :cond_0
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .local v13, msg:Landroid/os/Message;
    const/16 v20, 0x2

    move/from16 v0, v20

    iput v0, v13, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v21 .. v21}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;Z)V

    .end local v13           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v20, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->access$2902(Lcom/android/server/WifiService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$3000(Lcom/android/server/WifiService;)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$8;->shouldWifiStayAwake(II)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v21 .. v21}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    add-long v22, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v24 .. v24}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v24

    invoke-virtual/range {v20 .. v24}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/32 v24, 0x1d4c0

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v24 .. v24}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v24

    invoke-virtual/range {v20 .. v24}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_5
    const-string v20, "com.android.server.WifiManager.action.DEVICE_IDLE"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    :cond_6
    const-string v20, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    const-string v20, "plugged"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .local v15, pluggedType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$8;->shouldWifiStayAwake(II)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/android/server/WifiService$8;->shouldWifiStayAwake(II)Z

    move-result v20

    if-nez v20, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    add-long v18, v20, v11

    .local v18, triggerTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v22 .. v22}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v18

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .end local v18           #triggerTime:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v0, v15}, Lcom/android/server/WifiService;->access$3202(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .end local v15           #pluggedType:I
    :cond_8
    const-string v20, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    const-string v20, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .local v16, state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_0

    .end local v16           #state:I
    :cond_9
    const-string v20, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    const-string v21, "phoneinECMState"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->access$3302(Lcom/android/server/WifiService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    :cond_a
    const-string v20, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    const-string v20, "ABSENT"

    const-string v21, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "WifiService"

    const-string v21, "Sim absent"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/WifiService;->disconnect()V

    goto/16 :goto_0

    :cond_b
    const-string v20, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    const-string v20, "WifiService"

    const-string v21, "Receive Unlock screen"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mConnectEAPScreenUnlockOnce:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;)Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/android/server/WifiService;->mConnectEAPScreenUnlockOnce:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->access$3402(Lcom/android/server/WifiService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v21 .. v21}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v8

    .local v8, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v9, 0x0

    .local v9, enableApCounter:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_c
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .local v7, config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v6

    .local v6, authType:I
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v6, v0, :cond_d

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v6, v0, :cond_c

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v21 .. v21}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v21

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/net/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v6           #authType:I
    .end local v7           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_e
    if-lez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    goto/16 :goto_0

    .end local v8           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v9           #enableApCounter:I
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_f
    const-string v20, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkInfo;

    .local v14, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v21 .. v21}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$8;->shouldWifiStayAwake(II)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "WifiService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "re-setting ACTION_DEVICE_IDLE: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    add-long v22, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v24 .. v24}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v24

    invoke-virtual/range {v20 .. v24}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method
