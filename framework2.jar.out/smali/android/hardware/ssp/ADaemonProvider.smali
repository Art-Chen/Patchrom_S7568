.class abstract Landroid/hardware/ssp/ADaemonProvider;
.super Ljava/lang/Object;
.source "ADaemonProvider.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonProvider;


# static fields
.field protected static final RUN:I = 0x1

.field protected static final STOP:I = 0x2

.field protected static final WAIT:I


# instance fields
.field private mStatus:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/ssp/ADaemonProvider;->mStatus:I

    return-void
.end method


# virtual methods
.method public finalizeProvider()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/hardware/ssp/ADaemonProvider;->stop()Z

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/ssp/ADaemonProvider;->setStatus(I)V

    .line 59
    return-void
.end method

.method protected getStatus()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Landroid/hardware/ssp/ADaemonProvider;->mStatus:I

    return v0
.end method

.method public initializeProvider()Z
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/hardware/ssp/ADaemonProvider;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    .line 45
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/hardware/ssp/ADaemonProvider;->setStatus(I)V

    .line 47
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 109
    iput p1, p0, Landroid/hardware/ssp/ADaemonProvider;->mStatus:I

    .line 110
    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0}, Landroid/hardware/ssp/ADaemonProvider;->getStatus()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    .line 72
    :cond_0
    invoke-virtual {p0, v0}, Landroid/hardware/ssp/ADaemonProvider;->setStatus(I)V

    goto :goto_0
.end method

.method public stop()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 84
    invoke-virtual {p0}, Landroid/hardware/ssp/ADaemonProvider;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    .line 88
    :cond_0
    invoke-virtual {p0, v1}, Landroid/hardware/ssp/ADaemonProvider;->setStatus(I)V

    .line 90
    const/4 v0, 0x1

    goto :goto_0
.end method
