.class Landroid/sec/multiwindow/MultiWindowManager$_handler;
.super Landroid/os/Handler;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/MultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "_handler"
.end annotation


# static fields
.field private static final MSG_CALL_ACTIVITY_CHANGE:I = 0x1fe

.field private static final MSG_CALL_ACTIVITY_FINISH:I = 0xc8

.field private static final MSG_CALL_ACTIVITY_FORCE_CLOSED:I = 0x258

.field private static final MSG_CALL_ACTIVITY_INVISIBLE_PAUSE:I = 0x1a4

.field private static final MSG_CALL_ACTIVITY_PRECHANGE:I = 0x208

.field private static final MSG_CALL_ACTIVITY_RESUME:I = 0x12c

.field private static final MSG_CALL_ACTIVITY_VISIBLE_PAUSE:I = 0x19a

.field private static final MSG_CALL_FERFORM_RESUME:I = 0x64


# instance fields
.field private mWindowManager:Landroid/view/IWindowManager;

.field private myParents:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/sec/multiwindow/MultiWindowManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindowManager$_handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v5, :cond_1

    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    iput-object v5, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->mWindowManager:Landroid/view/IWindowManager;

    :cond_1
    :try_start_0
    #calls: Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->access$100()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/sec/multiwindow/IMultiWindowService;->setPermissionOff(Z)V

    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getTaskId()I

    move-result v4

    .local v4, taskId:I
    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    #calls: Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->access$100()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/sec/multiwindow/IMultiWindowService;->setPermissionOff(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v4           #taskId:I
    :goto_1
    :try_start_1
    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->performResumeMandate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Activity.MultiWindowAction.Handler] error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :sswitch_1
    :try_start_2
    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Activity.MultiWindowAction.Handler] error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_2
    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->actionResumeMandate()V

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  MSG_CALL_ACTIVITY_VISIBLE_PAUSE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->onVisibilityChanged(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  MSG_CALL_ACTIVITY_INVISIBLE_PAUSE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->onVisibilityChanged(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :sswitch_5
    const/4 v3, 0x0

    .local v3, resizeRect:Landroid/graphics/Rect;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Landroid/graphics/Rect;

    if-eqz v5, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3           #resizeRect:Landroid/graphics/Rect;
    check-cast v3, Landroid/graphics/Rect;

    .restart local v3       #resizeRect:Landroid/graphics/Rect;
    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  MSG_CALL_ACTIVITY_CHANGE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-virtual {v5, v3}, Landroid/app/Activity;->onLayoutChanged(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .end local v3           #resizeRect:Landroid/graphics/Rect;
    :sswitch_6
    const/4 v2, 0x0

    .local v2, item:Landroid/sec/multiwindow/PreventSplitItem;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Landroid/sec/multiwindow/PreventSplitItem;

    if-eqz v5, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2           #item:Landroid/sec/multiwindow/PreventSplitItem;
    check-cast v2, Landroid/sec/multiwindow/PreventSplitItem;

    .restart local v2       #item:Landroid/sec/multiwindow/PreventSplitItem;
    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  MSG_CALL_ACTIVITY_PRECHANGE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/sec/multiwindow/PreventSplitItem;->getRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/sec/multiwindow/PreventSplitItem;->getSplit()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/sec/multiwindow/PreventSplitItem;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->onPrepareLayoutChanged(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/sec/multiwindow/PreventSplitItem;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2}, Landroid/sec/multiwindow/PreventSplitItem;->getSplit()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->onPrepareLayoutChanged(Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    .end local v2           #item:Landroid/sec/multiwindow/PreventSplitItem;
    :sswitch_7
    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  MSG_CALL_ACTIVITY_FORCE_CLOSE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->onForceClosed()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x19a -> :sswitch_3
        0x1a4 -> :sswitch_4
        0x1fe -> :sswitch_5
        0x208 -> :sswitch_6
        0x258 -> :sswitch_7
    .end sparse-switch
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "prnt"

    .prologue
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindowManager$_handler;->myParents:Landroid/app/Activity;

    return-void
.end method
