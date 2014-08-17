.class Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"

# interfaces
.implements Landroid/sec/multiwindow/IMultiWindowAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/MultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowAction"
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/multiwindow/IMultiWindowAction$Stub;

.field private mHandler:Landroid/sec/multiwindow/MultiWindowManager$_handler;

.field private mParents:Landroid/app/Activity;

.field final synthetic this$0:Landroid/sec/multiwindow/MultiWindowManager;


# direct methods
.method public constructor <init>(Landroid/sec/multiwindow/MultiWindowManager;Landroid/app/Activity;)V
    .locals 2
    .parameter
    .parameter "self"

    .prologue
    .line 1754
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->this$0:Landroid/sec/multiwindow/MultiWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1679
    new-instance v0, Landroid/sec/multiwindow/MultiWindowManager$_handler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/sec/multiwindow/MultiWindowManager$_handler;-><init>(Landroid/sec/multiwindow/MultiWindowManager$1;)V

    iput-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mHandler:Landroid/sec/multiwindow/MultiWindowManager$_handler;

    .line 1684
    new-instance v0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;

    invoke-direct {v0, p0}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;-><init>(Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;)V

    iput-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mBinder:Landroid/sec/multiwindow/IMultiWindowAction$Stub;

    .line 1755
    iput-object p2, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mParents:Landroid/app/Activity;

    .line 1756
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mHandler:Landroid/sec/multiwindow/MultiWindowManager$_handler;

    iget-object v1, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mParents:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowManager$_handler;->setActivity(Landroid/app/Activity;)V

    .line 1757
    return-void
.end method


# virtual methods
.method public actionChangeSize(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "resizeRect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1790
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1791
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1fe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1792
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1793
    iget-object v1, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mHandler:Landroid/sec/multiwindow/MultiWindowManager$_handler;

    invoke-virtual {v1, v0}, Landroid/sec/multiwindow/MultiWindowManager$_handler;->sendMessage(Landroid/os/Message;)Z

    .line 1795
    return-void
.end method

.method public actionFinish()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1768
    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Activity.MultiWindowAction.actionFinish]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mParents:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Finish Call~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mHandler:Landroid/sec/multiwindow/MultiWindowManager$_handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowManager$_handler;->sendEmptyMessage(I)Z

    .line 1770
    return-void
.end method

.method public actionForceClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1808
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mHandler:Landroid/sec/multiwindow/MultiWindowManager$_handler;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowManager$_handler;->sendEmptyMessage(I)Z

    .line 1809
    return-void
.end method

.method public actionPreChangeSize(Landroid/graphics/Rect;Z)V
    .locals 2
    .parameter "resizePreRect"
    .parameter "split"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1799
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1800
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x208

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1801
    new-instance v1, Landroid/sec/multiwindow/PreventSplitItem;

    invoke-direct {v1, p1, p2}, Landroid/sec/multiwindow/PreventSplitItem;-><init>(Landroid/graphics/Rect;Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1802
    iget-object v1, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mHandler:Landroid/sec/multiwindow/MultiWindowManager$_handler;

    invoke-virtual {v1, v0}, Landroid/sec/multiwindow/MultiWindowManager$_handler;->sendMessage(Landroid/os/Message;)Z

    .line 1804
    return-void
.end method

.method public actionResize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1774
    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Activity.MultiWindowAction.actionResize]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mParents:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mHandler:Landroid/sec/multiwindow/MultiWindowManager$_handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowManager$_handler;->sendEmptyMessage(I)Z

    .line 1776
    return-void
.end method

.method public actionResume()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1761
    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Activity.MultiWindowAction.actionResume]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mParents:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Call~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mHandler:Landroid/sec/multiwindow/MultiWindowManager$_handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowManager$_handler;->sendEmptyMessage(I)Z

    .line 1764
    return-void
.end method

.method public actionVisible(Z)V
    .locals 3
    .parameter "visibled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1780
    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Activity.MultiWindowAction.actionVisible]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mParents:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", taskId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mParents:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    if-eqz p1, :cond_0

    .line 1783
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mHandler:Landroid/sec/multiwindow/MultiWindowManager$_handler;

    const/16 v1, 0x19a

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowManager$_handler;->sendEmptyMessage(I)Z

    .line 1786
    :goto_0
    return-void

    .line 1785
    :cond_0
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mHandler:Landroid/sec/multiwindow/MultiWindowManager$_handler;

    const/16 v1, 0x1a4

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowManager$_handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mBinder:Landroid/sec/multiwindow/IMultiWindowAction$Stub;

    return-object v0
.end method

.method public updateActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 1746
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mParents:Landroid/app/Activity;

    .line 1747
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mHandler:Landroid/sec/multiwindow/MultiWindowManager$_handler;

    iget-object v1, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->mParents:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowManager$_handler;->setActivity(Landroid/app/Activity;)V

    .line 1748
    return-void
.end method
