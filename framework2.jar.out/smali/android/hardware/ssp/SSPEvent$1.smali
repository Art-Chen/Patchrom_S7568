.class final Landroid/hardware/ssp/SSPEvent$1;
.super Ljava/lang/Object;
.source "SSPEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/SSPEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/ssp/SSPEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 438
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/ssp/SSPEvent;
    .locals 1
    .parameter "source"

    .prologue
    .line 442
    new-instance v0, Landroid/hardware/ssp/SSPEvent;

    invoke-direct {v0, p1}, Landroid/hardware/ssp/SSPEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Landroid/hardware/ssp/SSPEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/ssp/SSPEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/ssp/SSPEvent;
    .locals 1
    .parameter "size"

    .prologue
    .line 447
    new-array v0, p1, [Landroid/hardware/ssp/SSPEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Landroid/hardware/ssp/SSPEvent$1;->newArray(I)[Landroid/hardware/ssp/SSPEvent;

    move-result-object v0

    return-object v0
.end method
