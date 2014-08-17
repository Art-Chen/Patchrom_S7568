.class Landroid/hardware/ssp/DaemonBuilderDirectorRunner;
.super Ljava/lang/Object;
.source "DaemonBuilderDirectorRunner.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonBuilderDirector;


# instance fields
.field private final mRunner:Landroid/hardware/ssp/ADaemonRunner;


# direct methods
.method protected constructor <init>(Landroid/hardware/ssp/ADaemonRunner;)V
    .locals 0
    .parameter "runner"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/hardware/ssp/DaemonBuilderDirectorRunner;->mRunner:Landroid/hardware/ssp/ADaemonRunner;

    .line 36
    return-void
.end method


# virtual methods
.method public buildObj(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 47
    new-instance v0, Landroid/hardware/ssp/DaemonRunner;

    invoke-direct {v0, p1, p2}, Landroid/hardware/ssp/DaemonRunner;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 49
    .local v0, runner:Landroid/hardware/ssp/DaemonRunner;
    iget-object v1, p0, Landroid/hardware/ssp/DaemonBuilderDirectorRunner;->mRunner:Landroid/hardware/ssp/ADaemonRunner;

    invoke-virtual {v1, v0}, Landroid/hardware/ssp/ADaemonRunner;->setRunner(Landroid/hardware/ssp/DaemonRunner;)V

    .line 51
    iget-object v1, p0, Landroid/hardware/ssp/DaemonBuilderDirectorRunner;->mRunner:Landroid/hardware/ssp/ADaemonRunner;

    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonRunner;->setServiceName()V

    .line 52
    iget-object v1, p0, Landroid/hardware/ssp/DaemonBuilderDirectorRunner;->mRunner:Landroid/hardware/ssp/ADaemonRunner;

    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonRunner;->prepareRunner()V

    .line 53
    iget-object v1, p0, Landroid/hardware/ssp/DaemonBuilderDirectorRunner;->mRunner:Landroid/hardware/ssp/ADaemonRunner;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/ssp/ADaemonRunner;->setStatus(I)V

    .line 54
    iget-object v1, p0, Landroid/hardware/ssp/DaemonBuilderDirectorRunner;->mRunner:Landroid/hardware/ssp/ADaemonRunner;

    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonRunner;->clearVar()V

    .line 55
    return-void
.end method
