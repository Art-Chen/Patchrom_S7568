.class final Landroid/hardware/ssp/SSPPedometerContext$1;
.super Ljava/lang/Object;
.source "SSPPedometerContext.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/SSPPedometerContext;
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
        "Landroid/hardware/ssp/SSPPedometerContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/ssp/SSPPedometerContext;
    .locals 1
    .parameter "source"

    .prologue
    .line 224
    new-instance v0, Landroid/hardware/ssp/SSPPedometerContext;

    invoke-direct {v0, p1}, Landroid/hardware/ssp/SSPPedometerContext;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Landroid/hardware/ssp/SSPPedometerContext$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/ssp/SSPPedometerContext;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/ssp/SSPPedometerContext;
    .locals 1
    .parameter "size"

    .prologue
    .line 229
    new-array v0, p1, [Landroid/hardware/ssp/SSPPedometerContext;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Landroid/hardware/ssp/SSPPedometerContext$1;->newArray(I)[Landroid/hardware/ssp/SSPPedometerContext;

    move-result-object v0

    return-object v0
.end method
