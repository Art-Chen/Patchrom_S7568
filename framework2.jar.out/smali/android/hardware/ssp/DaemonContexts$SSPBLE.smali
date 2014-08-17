.class public Landroid/hardware/ssp/DaemonContexts$SSPBLE;
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
    name = "SSPBLE"
.end annotation


# instance fields
.field protected count:I

.field protected id:[Ljava/lang/String;

.field protected rssi:[I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 614
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 632
    iput v4, p0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->count:I

    .line 633
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->id:[Ljava/lang/String;

    .line 634
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->rssi:[I

    .line 635
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 636
    iget-object v1, p0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->id:[Ljava/lang/String;

    const-string v2, "00:00:00:00:00:00"

    aput-object v2, v1, v0

    .line 637
    iget-object v1, p0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->rssi:[I

    aput v4, v1, v0

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    :cond_0
    return-void
.end method

.method protected clear(I)V
    .locals 4
    .parameter "maxCnt"

    .prologue
    const/4 v3, 0x0

    .line 648
    iput v3, p0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->count:I

    .line 649
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->id:[Ljava/lang/String;

    .line 650
    new-array v1, p1, [I

    iput-object v1, p0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->rssi:[I

    .line 651
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 652
    iget-object v1, p0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->id:[Ljava/lang/String;

    const-string v2, "00:00:00:00:00:00"

    aput-object v2, v1, v0

    .line 653
    iget-object v1, p0, Landroid/hardware/ssp/DaemonContexts$SSPBLE;->rssi:[I

    aput v3, v1, v0

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_0
    return-void
.end method
