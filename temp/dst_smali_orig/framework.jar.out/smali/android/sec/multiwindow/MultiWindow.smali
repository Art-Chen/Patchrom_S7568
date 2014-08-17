.class public Landroid/sec/multiwindow/MultiWindow;
.super Ljava/lang/Object;
.source "MultiWindow.java"

# interfaces
.implements Landroid/sec/multiwindow/IMultiWindow;


# static fields
.field protected static final TAG:Ljava/lang/String; = "MultiWindow"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIntent:Landroid/content/Intent;

.field protected mService:Landroid/sec/multiwindow/IMultiWindowService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/sec/multiwindow/IMultiWindowService;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "service"
    .parameter "componentName"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindow;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/sec/multiwindow/IMultiWindowService;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "service"
    .parameter "intent"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindow;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    iput-object p3, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method protected static isEnabledComponentName(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "context"
    .parameter "componentName"

    .prologue
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public finish()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->finish(I)Z

    move-result v0

    return v0
.end method

.method public finish(I)Z
    .locals 5
    .parameter "taskId"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2, p1}, Landroid/sec/multiwindow/IMultiWindowService;->stop(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public fitToHalf(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_1

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2, p1}, Landroid/sec/multiwindow/IMultiWindowService;->fitToHalf(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public getHeight()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .local v0, Result:I
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .end local v0           #Result:I
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:I
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2}, Landroid/sec/multiwindow/IMultiWindowService;->getHeight(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .end local v0           #Result:I
    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    .restart local v0       #Result:I
    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public getMinimumSize()Landroid/graphics/Point;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Landroid/graphics/Point;
    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move-object v1, v0

    .end local v0           #Result:Landroid/graphics/Point;
    .local v1, Result:Landroid/graphics/Point;
    :goto_0
    return-object v1

    .end local v1           #Result:Landroid/graphics/Point;
    .restart local v0       #Result:Landroid/graphics/Point;
    :cond_0
    const/4 v3, 0x0

    .local v3, data:Landroid/graphics/Rect;
    :try_start_0
    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v5, v2}, Landroid/sec/multiwindow/IMultiWindowService;->getMinimumSize(Landroid/content/ComponentName;)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_1

    iget v5, v3, Landroid/graphics/Rect;->right:I

    if-lez v5, :cond_1

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    if-lez v5, :cond_1

    new-instance v0, Landroid/graphics/Point;

    .end local v0           #Result:Landroid/graphics/Point;
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .restart local v0       #Result:Landroid/graphics/Point;
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Point;->set(II)V

    :cond_1
    move-object v1, v0

    .end local v0           #Result:Landroid/graphics/Point;
    .restart local v1       #Result:Landroid/graphics/Point;
    goto :goto_0

    .end local v1           #Result:Landroid/graphics/Point;
    .restart local v0       #Result:Landroid/graphics/Point;
    :catch_0
    move-exception v4

    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .local v1, cmpnt:Landroid/content/ComponentName;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v1}, Landroid/sec/multiwindow/IMultiWindowService;->getPositionOfWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v3

    .local v3, mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/sec/multiwindow/MultiWindowObject;->getMultiWindowRect()Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v3           #mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_1
    :goto_1
    const-string v4, "MultiWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getRect] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public getRect(I)Landroid/graphics/Rect;
    .locals 8
    .parameter "taskId"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .local v1, cmpnt:Landroid/content/ComponentName;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v1, p1}, Landroid/sec/multiwindow/IMultiWindowService;->getPositionOfWindowWithTaskId(Landroid/content/ComponentName;I)Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v3

    .local v3, mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/sec/multiwindow/MultiWindowObject;->getMultiWindowRect()Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v3           #mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_1
    :goto_1
    const-string v4, "MultiWindow"

    const-string v5, "getRect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rect : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v1, v6}, Landroid/sec/multiwindow/MWlog;->s(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)I

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public getWidth()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .local v0, Result:I
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .end local v0           #Result:I
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:I
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2}, Landroid/sec/multiwindow/IMultiWindowService;->getWidth(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .end local v0           #Result:I
    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    .restart local v0       #Result:I
    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public isMaximized()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .local v0, Result:Z
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2}, Landroid/sec/multiwindow/IMultiWindowService;->isMaximized(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public isMaximized(I)Z
    .locals 8
    .parameter "taskId"

    .prologue
    const/4 v0, 0x1

    .local v0, Result:Z
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2, p1}, Landroid/sec/multiwindow/IMultiWindowService;->isMaximizedWithTaskId(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    const-string v4, "MultiWindow"

    const-string v5, "isMaximized"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v2, v6}, Landroid/sec/multiwindow/MWlog;->s(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)I

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public isStartingSplitScreen(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "componentName"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    if-nez p1, :cond_0

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->isStartingSplitScreen(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public maximize()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2}, Landroid/sec/multiwindow/IMultiWindowService;->maximize(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    const-string v4, "MultiWindow"

    const-string v5, "maximize"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v2, v6}, Landroid/sec/multiwindow/MWlog;->s(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)I

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public minimize()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2}, Landroid/sec/multiwindow/IMultiWindowService;->minimize(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public pinUp(Z)Z
    .locals 7
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2, p1}, Landroid/sec/multiwindow/IMultiWindowService;->pinupWindow(Landroid/content/ComponentName;Z)Z

    move-result v0

    const-string v4, "MultiWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[pinUp] className:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public relayout(Landroid/graphics/Rect;)Z
    .locals 9
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, cmpnt:Landroid/content/ComponentName;
    const-string v5, "MultiWindow"

    const-string v6, "relayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rect : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v2, v7}, Landroid/sec/multiwindow/MWlog;->s(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v5, v2, p1}, Landroid/sec/multiwindow/IMultiWindowService;->setPositionWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/sec/multiwindow/MultiWindowObject;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .end local v4           #mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_2
    :goto_1
    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public restore()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2}, Landroid/sec/multiwindow/IMultiWindowService;->restore(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public setMinimumSize(II)Z
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_2

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_2
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->setMinimumSize(Landroid/content/ComponentName;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public start()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Landroid/sec/multiwindow/MultiWindow;->isEnabledComponentName(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-interface {v4, v5}, Landroid/sec/multiwindow/IMultiWindowService;->start(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method
