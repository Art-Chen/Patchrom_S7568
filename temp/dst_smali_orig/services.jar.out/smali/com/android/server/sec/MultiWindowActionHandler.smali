.class Lcom/android/server/sec/MultiWindowActionHandler;
.super Landroid/os/Handler;
.source "MultiWindowActionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiWindowActionHandler"


# instance fields
.field private final MSG_CALL_CHANGE:I

.field private final MSG_CALL_FINISH:I

.field private final MSG_CALL_FORCE_CLOSED:I

.field private final MSG_CALL_PAUSE:I

.field private final MSG_CALL_PRECHANGE:I

.field private final MSG_CALL_RESIZE:I

.field private final MSG_CALL_RESUME:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sec/MultiWindowActionHandler;->MSG_CALL_RESUME:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/sec/MultiWindowActionHandler;->MSG_CALL_FINISH:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/sec/MultiWindowActionHandler;->MSG_CALL_RESIZE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/sec/MultiWindowActionHandler;->MSG_CALL_PAUSE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/sec/MultiWindowActionHandler;->MSG_CALL_CHANGE:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/sec/MultiWindowActionHandler;->MSG_CALL_PRECHANGE:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/sec/MultiWindowActionHandler;->MSG_CALL_FORCE_CLOSED:I

    return-void
.end method

.method private makeList(Landroid/sec/multiwindow/IMultiWindowAction;)Ljava/util/List;
    .locals 1
    .parameter "acAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/sec/multiwindow/IMultiWindowAction;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/sec/multiwindow/IMultiWindowAction;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "acAction"
    .parameter "resizeRect"

    .prologue
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowActionHandler;->makeList(Landroid/sec/multiwindow/IMultiWindowAction;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/sec/MultiWindowActionHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public actionFinish(Landroid/sec/multiwindow/IMultiWindowAction;)V
    .locals 4
    .parameter "acAction"

    .prologue
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowActionHandler;->makeList(Landroid/sec/multiwindow/IMultiWindowAction;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowActionHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public actionFinish(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/sec/multiwindow/IMultiWindowAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, acActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowActionHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public actionForceClosed(Landroid/sec/multiwindow/IMultiWindowAction;)V
    .locals 4
    .parameter "acAction"

    .prologue
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowActionHandler;->makeList(Landroid/sec/multiwindow/IMultiWindowAction;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowActionHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public actionPause(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/sec/multiwindow/IMultiWindowAction;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, acActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    .local p2, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowActionHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/sec/multiwindow/PreventSplitItem;)V
    .locals 3
    .parameter "acAction"
    .parameter "preventSplitItem"

    .prologue
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowActionHandler;->makeList(Landroid/sec/multiwindow/IMultiWindowAction;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowActionHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V
    .locals 4
    .parameter "acAction"

    .prologue
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowActionHandler;->makeList(Landroid/sec/multiwindow/IMultiWindowAction;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowActionHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public actionResume(Landroid/sec/multiwindow/IMultiWindowAction;)V
    .locals 4
    .parameter "acAction"

    .prologue
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowActionHandler;->makeList(Landroid/sec/multiwindow/IMultiWindowAction;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowActionHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    .local v2, args:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;Ljava/lang/Object;>;"
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .local v1, activityActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    :cond_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/IMultiWindowAction;

    .local v0, action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v10}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->actionResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v0           #action:Landroid/sec/multiwindow/IMultiWindowAction;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #i$:Ljava/util/Iterator;
    :pswitch_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/IMultiWindowAction;

    .restart local v0       #action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v10}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->actionFinish()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .end local v0           #action:Landroid/sec/multiwindow/IMultiWindowAction;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #i$:Ljava/util/Iterator;
    :pswitch_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/IMultiWindowAction;

    .restart local v0       #action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v0, :cond_5

    :try_start_2
    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v10}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "MultiWindowActionHandler"

    const-string v11, "MSG_CALL_RESIZE"

    invoke-static {v10, v11}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->actionResize()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .end local v0           #action:Landroid/sec/multiwindow/IMultiWindowAction;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #i$:Ljava/util/Iterator;
    :pswitch_3
    iget-object v8, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .local v8, pausedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .local v6, iCount:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-eq v10, v6, :cond_6

    invoke-interface {v8}, Ljava/util/List;->clear()V

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    if-ge v4, v6, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/IMultiWindowAction;

    .restart local v0       #action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v0, :cond_7

    :try_start_3
    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v10}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "MultiWindowActionHandler"

    const-string v11, "MSG_CALL_PAUSE"

    invoke-static {v10, v11}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v0, v10}, Landroid/sec/multiwindow/IMultiWindowAction;->actionVisible(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_7
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catch_3
    move-exception v3

    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .end local v0           #action:Landroid/sec/multiwindow/IMultiWindowAction;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v4           #i:I
    .end local v6           #iCount:I
    .end local v8           #pausedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    :pswitch_4
    iget-object v9, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/Rect;

    .local v9, resizeRect:Landroid/graphics/Rect;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/IMultiWindowAction;

    .restart local v0       #action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v0, :cond_8

    :try_start_4
    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v10}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "MultiWindowActionHandler"

    const-string v11, "MSG_CALL_CHANGE"

    invoke-static {v10, v11}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v9}, Landroid/sec/multiwindow/IMultiWindowAction;->actionChangeSize(Landroid/graphics/Rect;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v3

    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .end local v0           #action:Landroid/sec/multiwindow/IMultiWindowAction;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #resizeRect:Landroid/graphics/Rect;
    :pswitch_5
    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/sec/multiwindow/PreventSplitItem;

    .local v7, item:Landroid/sec/multiwindow/PreventSplitItem;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/IMultiWindowAction;

    .restart local v0       #action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v0, :cond_9

    :try_start_5
    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v10}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "MultiWindowActionHandler"

    const-string v11, "MSG_CALL_PRECHANGE"

    invoke-static {v10, v11}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/sec/multiwindow/PreventSplitItem;->getRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v7}, Landroid/sec/multiwindow/PreventSplitItem;->getSplit()Z

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/sec/multiwindow/IMultiWindowAction;->actionPreChangeSize(Landroid/graphics/Rect;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    move-exception v3

    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    .end local v0           #action:Landroid/sec/multiwindow/IMultiWindowAction;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #item:Landroid/sec/multiwindow/PreventSplitItem;
    :pswitch_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/IMultiWindowAction;

    .restart local v0       #action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v0, :cond_a

    :try_start_6
    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v10}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->actionForceClosed()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_8

    :catch_6
    move-exception v3

    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
