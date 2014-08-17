.class Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;
.super Landroid/sec/multiwindow/IMultiWindowAction$Stub;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;


# direct methods
.method constructor <init>(Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;)V
    .locals 0
    .parameter

    .prologue
    .line 1684
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;->this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-direct {p0}, Landroid/sec/multiwindow/IMultiWindowAction$Stub;-><init>()V

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
    .line 1720
    const-string v0, "MultiWindowManager"

    const-string v1, "[Activity.MultiWindowAction] actionChangeSize "

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;->this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-virtual {v0, p1}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->actionChangeSize(Landroid/graphics/Rect;)V

    .line 1722
    return-void
.end method

.method public actionFinish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1699
    const-string v0, "MultiWindowManager"

    const-string v1, "[Activity.MultiWindowAction] actionFinish "

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;->this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->actionFinish()V

    .line 1701
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
    .line 1732
    const-string v0, "MultiWindowManager"

    const-string v1, "[Activity.MultiWindowAction] actionForceClosed "

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;->this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->actionForceClosed()V

    .line 1734
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
    .line 1726
    const-string v0, "MultiWindowManager"

    const-string v1, "[Activity.MultiWindowAction] actionPreChangeSize "

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;->this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-virtual {v0, p1, p2}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->actionPreChangeSize(Landroid/graphics/Rect;Z)V

    .line 1728
    return-void
.end method

.method public actionResize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1708
    const-string v0, "MultiWindowManager"

    const-string v1, "[Activity.MultiWindowAction] actionResize "

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;->this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->actionResize()V

    .line 1710
    return-void
.end method

.method public actionResume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1690
    const-string v0, "MultiWindowManager"

    const-string v1, "[Activity.MultiWindowAction] actionResume "

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;->this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->actionResume()V

    .line 1692
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
    .line 1714
    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Activity.MultiWindowAction] actionVisible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;->this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-virtual {v0, p1}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->actionVisible(Z)V

    .line 1716
    return-void
.end method
