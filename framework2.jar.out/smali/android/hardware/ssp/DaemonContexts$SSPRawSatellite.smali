.class public Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;
.super Ljava/lang/Object;
.source "DaemonContexts.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonContexts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SSPRawSatellite"
.end annotation


# instance fields
.field protected azim:[F

.field protected elev:[F

.field protected mask:[I

.field protected numSat:I

.field protected prn:[I

.field protected snr:[F


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 392
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 419
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;->numSat:I

    .line 420
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;->prn:[I

    .line 421
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;->snr:[F

    .line 422
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;->elev:[F

    .line 423
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;->azim:[F

    .line 424
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/ssp/DaemonContexts$SSPRawSatellite;->mask:[I

    .line 425
    return-void
.end method
