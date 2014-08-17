.class Lcom/android/server/WifiOffloadService$12;
.super Ljava/lang/Object;
.source "WifiOffloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->getDataUsageforUID(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iput-object p2, p0, Lcom/android/server/WifiOffloadService$12;->val$packageName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 1914
    const/4 v13, 0x0

    .line 1915
    .local v13, applicationInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v4, -0x1

    .line 1916
    .local v4, uid:I
    const-wide/16 v18, 0x0

    .line 1917
    .local v18, totalDataUsage:J
    const/4 v12, 0x0

    .line 1918
    .local v12, appLaunchCount:I
    const/16 v21, 0x0

    .line 1920
    .local v21, uidOffloadFlag:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v6, v7}, Lcom/android/server/WifiOffloadService;->access$1802(Lcom/android/server/WifiOffloadService;Z)Z

    .line 1923
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v6}, Lcom/android/server/WifiOffloadService;->checkIsWifiConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1924
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "WifiOffloadService"

    const-string v7, "WiFi is already connected; return false"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #calls: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->access$1900(Lcom/android/server/WifiOffloadService;)V

    .line 2021
    :goto_0
    return-void

    .line 1931
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->access$2000(Lcom/android/server/WifiOffloadService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/WifiOffloadService$12;->val$packageName:Ljava/lang/String;

    const/16 v9, 0x80

    invoke-virtual {v6, v7, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 1932
    iget v0, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1933
    .end local v4           #uid:I
    .local v20, uid:I
    :try_start_1
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APP UID == "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1936
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v2, v6, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v3, v6, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "userid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "data_usage"

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1937
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_7

    .line 1938
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cursor count == "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 1940
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    move/from16 v0, v20

    #calls: Lcom/android/server/WifiOffloadService;->insertDataUsage(I)Z
    invoke-static {v6, v0}, Lcom/android/server/WifiOffloadService;->access$2100(Lcom/android/server/WifiOffloadService;I)Z

    .line 1942
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "WifiOffloadService"

    const-string v7, "App lauched for the first time, so dont offload but insert the UID to DB"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #calls: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->access$1900(Lcom/android/server/WifiOffloadService;)V

    move/from16 v4, v20

    .line 1944
    .end local v20           #uid:I
    .restart local v4       #uid:I
    goto/16 :goto_0

    .line 1946
    .end local v4           #uid:I
    .restart local v20       #uid:I
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_6

    .line 1948
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1949
    const-string v6, "launchcount"

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1950
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "launch count in DB: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    :cond_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1961
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_7
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LAUNCH COUNT  = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_8
    move/from16 v4, v20

    .line 1968
    .end local v20           #uid:I
    .restart local v4       #uid:I
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->access$100(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;

    move-result-object v6

    #calls: Lcom/android/server/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->access$2200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 1969
    .local v3, template:Landroid/net/NetworkTemplate;
    const-string v6, "netstats"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v2

    .line 1971
    .local v2, mStatsService:Landroid/net/INetworkStatsService;
    if-eqz v2, :cond_d

    if-eqz v3, :cond_d

    .line 1972
    invoke-interface {v2}, Landroid/net/INetworkStatsService;->forceUpdate()V

    .line 1973
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-interface/range {v2 .. v7}, Landroid/net/INetworkStatsService;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    .line 1975
    .local v5, history:Landroid/net/NetworkStatsHistory;
    if-eqz v5, :cond_b

    .line 1976
    const-wide/high16 v6, -0x8000

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v17

    .line 1978
    .local v17, entry:Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v17, :cond_b

    .line 1979
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received bytes  = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    iget-wide v9, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    :cond_9
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transferred bytes = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    iget-wide v9, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :cond_a
    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v17

    iget-wide v9, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v18, v6, v9

    .line 1986
    .end local v17           #entry:Landroid/net/NetworkStatsHistory$Entry;
    :cond_b
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TotalDataUsage for this app = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    :cond_c
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Launch count for this app  = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    .end local v5           #history:Landroid/net/NetworkStatsHistory;
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    .line 1991
    const/high16 v6, 0x10

    const-string v7, "persist.offload.datausage.limit"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget v9, v9, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    mul-int v15, v6, v7

    .line 1992
    .local v15, dataUsageThreshold:I
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DATA_USAGE_THRESHOLD = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_e
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data Usage as per launch count = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-long v9, v12

    div-long v9, v18, v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_f
    int-to-long v6, v12

    div-long v6, v18, v6

    int-to-long v9, v15

    cmp-long v6, v6, v9

    if-ltz v6, :cond_11

    .line 1997
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "WifiOffloadService"

    const-string v7, "canAppOffload exceeds the threshold so Offload"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v7, 0x1

    #setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v6, v7}, Lcom/android/server/WifiOffloadService;->access$1802(Lcom/android/server/WifiOffloadService;Z)Z

    .line 2003
    :cond_11
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2004
    .local v8, cv:Landroid/content/ContentValues;
    add-int/lit8 v12, v12, 0x1

    .line 2005
    const-string v6, "launchcount"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2006
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v6, v6, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v7, v7, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "userid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "data_usage"

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->access$1800(Lcom/android/server/WifiOffloadService;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2010
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #calls: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->access$1900(Lcom/android/server/WifiOffloadService;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 2013
    .end local v2           #mStatsService:Landroid/net/INetworkStatsService;
    .end local v3           #template:Landroid/net/NetworkTemplate;
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v15           #dataUsageThreshold:I
    :catch_0
    move-exception v16

    .local v16, e:Ljava/lang/Exception;
    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ex in reading stats "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v6, v7}, Lcom/android/server/WifiOffloadService;->access$1802(Lcom/android/server/WifiOffloadService;Z)Z

    .line 2015
    .end local v16           #e:Ljava/lang/Exception;
    :cond_12
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "WifiOffloadService"

    const-string v7, "notify here"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :cond_13
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "canOffload ? "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v9}, Lcom/android/server/WifiOffloadService;->access$1800(Lcom/android/server/WifiOffloadService;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #calls: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->access$1900(Lcom/android/server/WifiOffloadService;)V

    goto/16 :goto_0

    .line 1957
    .end local v4           #uid:I
    .restart local v20       #uid:I
    :catch_1
    move-exception v16

    .line 1958
    .restart local v16       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "WifiOffloadService"

    const-string v7, "Exception in getDataUsageforUID for dbHelper"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 1964
    .end local v16           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v16

    move/from16 v4, v20

    .end local v20           #uid:I
    .restart local v4       #uid:I
    .restart local v16       #e:Ljava/lang/Exception;
    :goto_3
    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ex in getting uid "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v16           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v16

    goto :goto_3
.end method
