.class Landroid/hardware/ssp/DaemonBuilderDirectorService;
.super Ljava/lang/Object;
.source "DaemonBuilderDirectorService.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonBuilderDirector;


# instance fields
.field private final mService:Landroid/hardware/ssp/ADaemonService;


# direct methods
.method protected constructor <init>(Landroid/hardware/ssp/ADaemonService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/hardware/ssp/DaemonBuilderDirectorService;->mService:Landroid/hardware/ssp/ADaemonService;

    .line 36
    return-void
.end method


# virtual methods
.method public buildObj(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 47
    new-instance v0, Landroid/hardware/ssp/DaemonService;

    invoke-direct {v0, p1, p2}, Landroid/hardware/ssp/DaemonService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 49
    .local v0, service:Landroid/hardware/ssp/DaemonService;
    iget-object v1, p0, Landroid/hardware/ssp/DaemonBuilderDirectorService;->mService:Landroid/hardware/ssp/ADaemonService;

    invoke-virtual {v1, v0}, Landroid/hardware/ssp/ADaemonService;->setService(Landroid/hardware/ssp/DaemonService;)V

    .line 51
    iget-object v1, p0, Landroid/hardware/ssp/DaemonBuilderDirectorService;->mService:Landroid/hardware/ssp/ADaemonService;

    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonService;->setServiceName()V

    .line 52
    iget-object v1, p0, Landroid/hardware/ssp/DaemonBuilderDirectorService;->mService:Landroid/hardware/ssp/ADaemonService;

    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonService;->setProvider()V

    .line 53
    iget-object v1, p0, Landroid/hardware/ssp/DaemonBuilderDirectorService;->mService:Landroid/hardware/ssp/ADaemonService;

    invoke-virtual {v1}, Landroid/hardware/ssp/ADaemonService;->clearVar()V

    .line 54
    return-void
.end method
