.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 55
    .parameter "msg"

    .prologue
    .line 959
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1441
    :cond_0
    :goto_0
    return-void

    .line 961
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    .line 962
    .local v26, data:Ljava/util/HashMap;
    const/16 v24, 0x0

    .line 963
    .local v24, d:Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 964
    :try_start_0
    const-string v4, "app"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/am/ProcessRecord;

    .line 965
    .local v45, proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v45, :cond_1

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_1

    .line 966
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has crash dialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    monitor-exit v5

    goto :goto_0

    .line 990
    .end local v45           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 969
    .restart local v45       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_1
    :try_start_1
    const-string v4, "result"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/am/AppErrorResult;

    .line 970
    .local v49, res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_4

    .line 974
    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isCCRInstalled()Z

    move-result v4

    const/4 v4, 0x0

    if-eqz v4, :cond_3

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-nez v4, :cond_3

    .line 975
    const-string v4, "ActivityManager"

    const-string v6, "This device is CCR target. it will make CCR button"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const-string v4, "crashInfo"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 978
    .local v23, crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;
    new-instance v25, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    move-object/from16 v1, v49

    move-object/from16 v2, v45

    move-object/from16 v3, v23

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .end local v24           #d:Landroid/app/Dialog;
    .local v25, d:Landroid/app/Dialog;
    move-object/from16 v24, v25

    .line 983
    .end local v23           #crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v25           #d:Landroid/app/Dialog;
    .restart local v24       #d:Landroid/app/Dialog;
    :goto_1
    move-object/from16 v0, v24

    move-object/from16 v1, v45

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 990
    :goto_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    if-eqz v24, :cond_2

    .line 993
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->show()V

    .line 995
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 980
    :cond_3
    :try_start_2
    new-instance v25, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

#    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;
    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "crash"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, v49

    move-object/from16 v2, v45

#    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    invoke-direct {v0, v6, v1, v2, v4}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .end local v24           #d:Landroid/app/Dialog;
    .restart local v25       #d:Landroid/app/Dialog;
    move-object/from16 v24, v25

    .end local v25           #d:Landroid/app/Dialog;
    .restart local v24       #d:Landroid/app/Dialog;
    goto :goto_1

    .line 988
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 998
    .end local v24           #d:Landroid/app/Dialog;
    .end local v26           #data:Ljava/util/HashMap;
    .end local v45           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v49           #res:Lcom/android/server/am/AppErrorResult;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    .line 999
    .restart local v26       #data:Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1000
    :try_start_3
    const-string v4, "errorpermission"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    .line 1001
    .local v42, permission:Ljava/lang/String;
    const-string v4, "app"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/am/ProcessRecord;

    .line 1002
    .restart local v45       #proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v45, :cond_5

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_5

    .line 1003
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has crash dialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    monitor-exit v5

    goto/16 :goto_0

    .line 1016
    .end local v42           #permission:Ljava/lang/String;
    .end local v45           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 1006
    .restart local v42       #permission:Ljava/lang/String;
    .restart local v45       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_5
    :try_start_4
    const-string v4, "result"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/am/AppErrorResult;

    .line 1007
    .restart local v49       #res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_6

    .line 1008
    new-instance v24, Lcom/android/server/am/AppPermissionErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    move-object/from16 v2, v45

    move-object/from16 v3, v42

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/AppPermissionErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1009
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/AppPermissionErrorDialog;->show()V

    .line 1010
    move-object/from16 v0, v24

    move-object/from16 v1, v45

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1016
    .end local v24           #d:Landroid/app/Dialog;
    :goto_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1018
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1014
    :cond_6
    const/4 v4, 0x0

    :try_start_5
    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 1021
    .end local v26           #data:Ljava/util/HashMap;
    .end local v42           #permission:Ljava/lang/String;
    .end local v45           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v49           #res:Lcom/android/server/am/AppErrorResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    .line 1022
    .restart local v26       #data:Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1023
    :try_start_6
    const-string v4, "newIntent_intent"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    .line 1024
    .local v36, newIntent:Landroid/content/Intent;
    const-string v4, "newIntent_packagename"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1027
    .local v20, cmPackagename:Ljava/lang/String;
    :try_start_7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getManagedPermissions(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v21

    .line 1031
    .local v21, cmPermissions:[Ljava/lang/String;
    :goto_4
    :try_start_8
    new-instance v24, Lcom/android/server/am/AppPermissionAlertDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v36

    move-object/from16 v3, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/AppPermissionAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)V

    .line 1032
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->show()V

    .line 1034
    monitor-exit v5

    goto/16 :goto_0

    .end local v20           #cmPackagename:Ljava/lang/String;
    .end local v21           #cmPermissions:[Ljava/lang/String;
    .end local v24           #d:Landroid/app/Dialog;
    .end local v36           #newIntent:Landroid/content/Intent;
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v4

    .line 1028
    .restart local v20       #cmPackagename:Ljava/lang/String;
    .restart local v36       #newIntent:Landroid/content/Intent;
    :catch_0
    move-exception v28

    .line 1029
    .local v28, e:Landroid/os/RemoteException;
    const/16 v21, 0x0

    .restart local v21       #cmPermissions:[Ljava/lang/String;
    goto :goto_4

    .line 1037
    .end local v20           #cmPackagename:Ljava/lang/String;
    .end local v21           #cmPermissions:[Ljava/lang/String;
    .end local v26           #data:Ljava/util/HashMap;
    .end local v28           #e:Landroid/os/RemoteException;
    .end local v36           #newIntent:Landroid/content/Intent;
    :sswitch_3
    const/16 v24, 0x0

    .line 1038
    .restart local v24       #d:Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v54, v0

    monitor-enter v54

    .line 1039
    :try_start_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    .line 1040
    .restart local v26       #data:Ljava/util/HashMap;
    const-string v4, "app"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/am/ProcessRecord;

    .line 1041
    .restart local v45       #proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v45, :cond_7

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_7

    .line 1042
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App already has anr dialog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    monitor-exit v54

    goto/16 :goto_0

    .line 1057
    .end local v26           #data:Ljava/util/HashMap;
    .end local v45           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v4

    :goto_5
    monitor-exit v54
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v4

    .line 1046
    .restart local v26       #data:Ljava/util/HashMap;
    .restart local v45       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_7
    :try_start_a
    new-instance v7, Landroid/content/Intent;

    const-string v4, "android.intent.action.ANR"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v7, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v4, :cond_8

    .line 1048
    const/high16 v4, 0x4000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1050
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZII)I
    invoke-static/range {v4 .. v17}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZII)I

    .line 1054
    new-instance v25, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v25

    move-object/from16 v1, v45

    invoke-direct {v0, v5, v6, v1, v4}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1056
    .end local v24           #d:Landroid/app/Dialog;
    .restart local v25       #d:Landroid/app/Dialog;
    :try_start_b
    move-object/from16 v0, v25

    move-object/from16 v1, v45

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1057
    monitor-exit v54
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_11

    .line 1059
    if-eqz v25, :cond_9

    .line 1060
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/BaseErrorDialog;->show()V

    .line 1063
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1066
    .end local v7           #intent:Landroid/content/Intent;
    .end local v25           #d:Landroid/app/Dialog;
    .end local v26           #data:Ljava/util/HashMap;
    .end local v45           #proc:Lcom/android/server/am/ProcessRecord;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/util/HashMap;

    .line 1067
    .local v27, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1068
    :try_start_c
    const-string v4, "app"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/am/ProcessRecord;

    .line 1069
    .restart local v45       #proc:Lcom/android/server/am/ProcessRecord;
    if-nez v45, :cond_a

    .line 1070
    const-string v4, "ActivityManager"

    const-string v6, "App not found when showing strict mode dialog."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    monitor-exit v5

    goto/16 :goto_0

    .line 1087
    .end local v45           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v4

    .line 1073
    .restart local v45       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_a
    :try_start_d
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_b

    .line 1074
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has strict mode dialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    monitor-exit v5

    goto/16 :goto_0

    .line 1077
    :cond_b
    const-string v4, "result"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/am/AppErrorResult;

    .line 1078
    .restart local v49       #res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_c

    .line 1079
    new-instance v24, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    move-object/from16 v2, v45

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1080
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->show()V

    .line 1081
    move-object/from16 v0, v24

    move-object/from16 v1, v45

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1087
    .end local v24           #d:Landroid/app/Dialog;
    :goto_6
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1085
    :cond_c
    const/4 v4, 0x0

    :try_start_e
    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_6

    .line 1091
    .end local v27           #data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v45           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v49           #res:Lcom/android/server/am/AppErrorResult;
    :sswitch_5
    new-instance v24, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v5}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1093
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->show()V

    .line 1094
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1097
    .end local v24           #d:Landroid/app/Dialog;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v50

    .line 1098
    .local v50, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v50

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_0

    .line 1101
    .end local v50           #resolver:Landroid/content/ContentResolver;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1102
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1103
    monitor-exit v5

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v4

    .line 1106
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1107
    :try_start_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/am/ProcessRecord;

    .line 1108
    .local v18, app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_e

    .line 1109
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v4, :cond_d

    .line 1110
    new-instance v24, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v6, v1}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1113
    .restart local v24       #d:Landroid/app/Dialog;
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1114
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1115
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->show()V

    .line 1123
    .end local v24           #d:Landroid/app/Dialog;
    :cond_d
    :goto_7
    monitor-exit v5

    goto/16 :goto_0

    .end local v18           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_6
    move-exception v4

    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v4

    .line 1118
    .restart local v18       #app:Lcom/android/server/am/ProcessRecord;
    :cond_e
    :try_start_11
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_d

    .line 1119
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1120
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto :goto_7

    .line 1128
    .end local v18           #app:Lcom/android/server/am/ProcessRecord;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    #calls: Lcom/android/server/am/ActivityManagerService;->processNextBroadcast(Z)V
    invoke-static {v4, v5}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Z)V

    goto/16 :goto_0

    .line 1131
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1132
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastTimeoutLocked(Z)V
    invoke-static {v4, v6}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 1133
    monitor-exit v5

    goto/16 :goto_0

    :catchall_7
    move-exception v4

    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v4

    .line 1136
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_f

    .line 1137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v37

    .line 1139
    .local v37, nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v37

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7530

    move-object/from16 v0, v37

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1143
    .end local v37           #nmsg:Landroid/os/Message;
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    .line 1146
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1147
    :try_start_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v33, v4, -0x1

    .local v33, i:I
    :goto_8
    if-ltz v33, :cond_11

    .line 1148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/ProcessRecord;

    .line 1149
    .local v48, r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    if-eqz v4, :cond_10

    .line 1151
    :try_start_14
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_1

    .line 1147
    :cond_10
    :goto_9
    add-int/lit8 v33, v33, -0x1

    goto :goto_8

    .line 1152
    :catch_1
    move-exception v29

    .line 1153
    .local v29, ex:Landroid/os/RemoteException;
    :try_start_15
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update time zone for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1157
    .end local v29           #ex:Landroid/os/RemoteException;
    .end local v33           #i:I
    .end local v48           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_8
    move-exception v4

    monitor-exit v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    throw v4

    .restart local v33       #i:I
    :cond_11
    :try_start_16
    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    goto/16 :goto_0

    .line 1160
    .end local v33           #i:I
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1161
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v33, v4, -0x1

    .restart local v33       #i:I
    :goto_a
    if-ltz v33, :cond_13

    .line 1162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/ProcessRecord;

    .line 1163
    .restart local v48       #r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    if-eqz v4, :cond_12

    .line 1165
    :try_start_18
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_2

    .line 1161
    :cond_12
    :goto_b
    add-int/lit8 v33, v33, -0x1

    goto :goto_a

    .line 1166
    :catch_2
    move-exception v29

    .line 1167
    .restart local v29       #ex:Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clear dns cache for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1171
    .end local v29           #ex:Landroid/os/RemoteException;
    .end local v33           #i:I
    .end local v48           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_9
    move-exception v4

    monitor-exit v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    throw v4

    .restart local v33       #i:I
    :cond_13
    :try_start_1a
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    goto/16 :goto_0

    .line 1174
    .end local v33           #i:I
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/net/ProxyProperties;

    .line 1175
    .local v47, proxy:Landroid/net/ProxyProperties;
    const-string v32, ""

    .line 1176
    .local v32, host:Ljava/lang/String;
    const-string v44, ""

    .line 1177
    .local v44, port:Ljava/lang/String;
    const-string v30, ""

    .line 1178
    .local v30, exclList:Ljava/lang/String;
    if-eqz v47, :cond_14

    .line 1179
    invoke-virtual/range {v47 .. v47}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v32

    .line 1180
    invoke-virtual/range {v47 .. v47}, Landroid/net/ProxyProperties;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    .line 1181
    invoke-virtual/range {v47 .. v47}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v30

    .line 1183
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1184
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v33, v4, -0x1

    .restart local v33       #i:I
    :goto_c
    if-ltz v33, :cond_16

    .line 1185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/ProcessRecord;

    .line 1186
    .restart local v48       #r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    if-eqz v4, :cond_15

    .line 1188
    :try_start_1c
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v32

    move-object/from16 v1, v44

    move-object/from16 v2, v30

    invoke-interface {v4, v0, v1, v2}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_3

    .line 1184
    :cond_15
    :goto_d
    add-int/lit8 v33, v33, -0x1

    goto :goto_c

    .line 1189
    :catch_3
    move-exception v29

    .line 1190
    .restart local v29       #ex:Landroid/os/RemoteException;
    :try_start_1d
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update http proxy for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1195
    .end local v29           #ex:Landroid/os/RemoteException;
    .end local v33           #i:I
    .end local v48           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_a
    move-exception v4

    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    throw v4

    .restart local v33       #i:I
    :cond_16
    :try_start_1e
    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    goto/16 :goto_0

    .line 1199
    .end local v30           #exclList:Ljava/lang/String;
    .end local v32           #host:Ljava/lang/String;
    .end local v33           #i:I
    .end local v44           #port:Ljava/lang/String;
    .end local v47           #proxy:Landroid/net/ProxyProperties;
    :sswitch_f
    new-instance v24, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1200
    .local v24, d:Landroid/app/AlertDialog;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1201
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1202
    const-string v4, "System UIDs Inconsistent"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1203
    const-string v4, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1204
    const/4 v4, -0x1

    const-string v5, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xf

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    .line 1207
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->show()V

    goto/16 :goto_0

    .line 1210
    .end local v24           #d:Landroid/app/AlertDialog;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 1211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1216
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_17

    .line 1217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v37

    .line 1219
    .restart local v37       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v37

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    move-object/from16 v0, v37

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1223
    .end local v37           #nmsg:Landroid/os/Message;
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/am/ProcessRecord;

    .line 1224
    .restart local v18       #app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1225
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v18

    #calls: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1226
    monitor-exit v5

    goto/16 :goto_0

    :catchall_b
    move-exception v4

    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    throw v4

    .line 1229
    .end local v18           #app:Lcom/android/server/am/ProcessRecord;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1230
    :try_start_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 1231
    monitor-exit v5

    goto/16 :goto_0

    :catchall_c
    move-exception v4

    monitor-exit v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    throw v4

    .line 1234
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1235
    :try_start_21
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 1236
    .local v10, uid:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_18

    const/4 v11, 0x1

    .line 1237
    .local v11, restart:Z
    :goto_e
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 1238
    .local v9, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    #calls: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZ)Z
    invoke-static/range {v8 .. v14}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZ)Z

    .line 1239
    monitor-exit v5

    goto/16 :goto_0

    .end local v9           #pkg:Ljava/lang/String;
    .end local v10           #uid:I
    .end local v11           #restart:Z
    :catchall_d
    move-exception v4

    monitor-exit v5
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    throw v4

    .line 1236
    .restart local v10       #uid:I
    :cond_18
    const/4 v11, 0x0

    goto :goto_e

    .line 1242
    .end local v10           #uid:I
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    .line 1245
    :sswitch_15
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v34

    .line 1246
    .local v34, inm:Landroid/app/INotificationManager;
    if-eqz v34, :cond_0

    .line 1250
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Lcom/android/server/am/ActivityRecord;

    .line 1251
    .local v51, root:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v46, v0

    .line 1252
    .local v46, process:Lcom/android/server/am/ProcessRecord;
    if-eqz v46, :cond_0

    .line 1257
    :try_start_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v22

    .line 1258
    .local v22, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10404a6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v52

    .line 1260
    .local v52, text:Ljava/lang/String;
    new-instance v38, Landroid/app/Notification;

    invoke-direct/range {v38 .. v38}, Landroid/app/Notification;-><init>()V

    .line 1261
    .local v38, notification:Landroid/app/Notification;
    const v4, 0x1080683

    move-object/from16 v0, v38

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 1262
    const-wide/16 v4, 0x0

    move-object/from16 v0, v38

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 1263
    const/4 v4, 0x2

    move-object/from16 v0, v38

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1264
    move-object/from16 v0, v52

    move-object/from16 v1, v38

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1265
    const/4 v4, 0x0

    move-object/from16 v0, v38

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 1266
    const/4 v4, 0x0

    move-object/from16 v0, v38

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1267
    const/4 v4, 0x0

    move-object/from16 v0, v38

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10404a7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object/from16 v0, v51

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v12, 0x1000

    invoke-static {v5, v6, v8, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_22} :catch_5

    .line 1274
    const/4 v4, 0x1

    :try_start_23
    new-array v0, v4, [I

    move-object/from16 v41, v0

    .line 1275
    .local v41, outId:[I
    const-string v4, "android"

    const v5, 0x10404a6

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v41

    invoke-interface {v0, v4, v5, v1, v2}, Landroid/app/INotificationManager;->enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_23} :catch_5

    goto/16 :goto_0

    .line 1277
    .end local v41           #outId:[I
    :catch_4
    move-exception v28

    .line 1278
    .local v28, e:Ljava/lang/RuntimeException;
    :try_start_24
    const-string v4, "ActivityManager"

    const-string v5, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_24} :catch_5

    goto/16 :goto_0

    .line 1282
    .end local v22           #context:Landroid/content/Context;
    .end local v28           #e:Ljava/lang/RuntimeException;
    .end local v38           #notification:Landroid/app/Notification;
    .end local v52           #text:Ljava/lang/String;
    :catch_5
    move-exception v28

    .line 1283
    .local v28, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v5, "Unable to create context for heavy notification"

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1287
    .end local v28           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v34           #inm:Landroid/app/INotificationManager;
    .end local v46           #process:Lcom/android/server/am/ProcessRecord;
    .end local v51           #root:Lcom/android/server/am/ActivityRecord;
    :sswitch_16
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v34

    .line 1288
    .restart local v34       #inm:Landroid/app/INotificationManager;
    if-eqz v34, :cond_0

    .line 1292
    :try_start_25
    const-string v4, "android"

    const v5, 0x10404a6

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_7

    goto/16 :goto_0

    .line 1294
    :catch_6
    move-exception v28

    .line 1295
    .local v28, e:Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v5, "Error canceling notification for service"

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1301
    .end local v28           #e:Ljava/lang/RuntimeException;
    .end local v34           #inm:Landroid/app/INotificationManager;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1302
    :try_start_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 1303
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$2;->removeMessages(I)V

    .line 1304
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v37

    .line 1305
    .restart local v37       #nmsg:Landroid/os/Message;
    const-wide/32 v12, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/am/ActivityManagerService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1306
    monitor-exit v5

    goto/16 :goto_0

    .end local v37           #nmsg:Landroid/os/Message;
    :catchall_e
    move-exception v4

    monitor-exit v5
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    throw v4

    .line 1310
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZ)V

    goto/16 :goto_0

    .line 1316
    :sswitch_19
    const-string v4, "ActivityManager"

    const-string v5, "5 minutes is passed. So change the mTenMinsPassed to TRUE, becuase print the PSS at the low memory condition "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/am/ActivityManagerService;->mTenMinsPassed:Z

    goto/16 :goto_0

    .line 1320
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1321
    :try_start_27
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ActivityRecord;

    .line 1322
    .local v19, ar:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v4, :cond_1a

    .line 1323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v4, v4, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1325
    monitor-exit v5

    goto/16 :goto_0

    .line 1344
    .end local v19           #ar:Lcom/android/server/am/ActivityRecord;
    :catchall_f
    move-exception v4

    monitor-exit v5
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    throw v4

    .line 1327
    .restart local v19       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_19
    :try_start_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v4}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 1328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    .line 1330
    :cond_1a
    if-eqz v19, :cond_1b

    .line 1344
    :cond_1b
    monitor-exit v5
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    goto/16 :goto_0

    .line 1348
    .end local v19           #ar:Lcom/android/server/am/ActivityRecord;
    :sswitch_1b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    .line 1349
    .local v43, pid:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 1350
    .restart local v10       #uid:I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    .line 1351
    .local v31, foregroundActivities:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v43

    move/from16 v1, v31

    #calls: Lcom/android/server/am/ActivityManagerService;->dispatchForegroundActivitiesChanged(IIZ)V
    invoke-static {v4, v0, v10, v1}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;IIZ)V

    goto/16 :goto_0

    .line 1355
    .end local v10           #uid:I
    .end local v31           #foregroundActivities:Z
    .end local v43           #pid:I
    :sswitch_1c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    .line 1356
    .restart local v43       #pid:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 1357
    .restart local v10       #uid:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v43

    #calls: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v4, v0, v10}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_0

    .line 1361
    .end local v10           #uid:I
    .end local v43           #pid:I
    :sswitch_1d
    const-string v4, "1"

    const-string v5, "ro.debuggable"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    .line 1362
    .local v35, isDebuggable:Z
    if-eqz v35, :cond_0

    .line 1365
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1366
    :try_start_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v39

    .line 1367
    .local v39, now:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v12, v4, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    const-wide/32 v14, 0x493e0

    add-long/2addr v12, v14

    cmp-long v4, v39, v12

    if-gez v4, :cond_1c

    .line 1370
    monitor-exit v5

    goto/16 :goto_0

    .line 1373
    .end local v39           #now:J
    :catchall_10
    move-exception v4

    monitor-exit v5
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    throw v4

    .line 1372
    .restart local v39       #now:J
    :cond_1c
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-wide/from16 v0, v39

    iput-wide v0, v4, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    .line 1373
    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    .line 1374
    new-instance v53, Lcom/android/server/am/ActivityManagerService$2$1;

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerService$2$1;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    .line 1437
    .local v53, thread:Ljava/lang/Thread;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1297
    .end local v35           #isDebuggable:Z
    .end local v39           #now:J
    .end local v53           #thread:Ljava/lang/Thread;
    .restart local v34       #inm:Landroid/app/INotificationManager;
    :catch_7
    move-exception v4

    goto/16 :goto_0

    .line 1280
    .restart local v22       #context:Landroid/content/Context;
    .restart local v38       #notification:Landroid/app/Notification;
    .restart local v46       #process:Lcom/android/server/am/ProcessRecord;
    .restart local v51       #root:Lcom/android/server/am/ActivityRecord;
    .restart local v52       #text:Ljava/lang/String;
    :catch_8
    move-exception v4

    goto/16 :goto_0

    .line 1057
    .end local v22           #context:Landroid/content/Context;
    .end local v34           #inm:Landroid/app/INotificationManager;
    .end local v38           #notification:Landroid/app/Notification;
    .end local v46           #process:Lcom/android/server/am/ProcessRecord;
    .end local v51           #root:Lcom/android/server/am/ActivityRecord;
    .end local v52           #text:Ljava/lang/String;
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v25       #d:Landroid/app/Dialog;
    .restart local v26       #data:Ljava/util/HashMap;
    .restart local v45       #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_11
    move-exception v4

    move-object/from16 v24, v25

    .end local v25           #d:Landroid/app/Dialog;
    .local v24, d:Landroid/app/Dialog;
    goto/16 :goto_5

    .line 959
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x14 -> :sswitch_11
        0x15 -> :sswitch_12
        0x16 -> :sswitch_13
        0x17 -> :sswitch_14
        0x18 -> :sswitch_15
        0x19 -> :sswitch_16
        0x1a -> :sswitch_4
        0x1b -> :sswitch_17
        0x1c -> :sswitch_d
        0x1d -> :sswitch_e
        0x1e -> :sswitch_1a
        0x1f -> :sswitch_1b
        0x20 -> :sswitch_1c
        0x21 -> :sswitch_1d
        0x22 -> :sswitch_19
        0x23 -> :sswitch_1
        0x24 -> :sswitch_2
        0x3e7 -> :sswitch_18
    .end sparse-switch
.end method
