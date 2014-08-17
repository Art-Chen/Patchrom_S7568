.class final Landroid/hardware/ssp/SSPDangerZoneContext$1;
.super Ljava/lang/Object;
.source "SSPDangerZoneContext.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/SSPDangerZoneContext;
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
        "Landroid/hardware/ssp/SSPDangerZoneContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/ssp/SSPDangerZoneContext;
    .locals 1
    .parameter "source"

    .prologue
    .line 149
    new-instance v0, Landroid/hardware/ssp/SSPDangerZoneContext;

    invoke-direct {v0, p1}, Landroid/hardware/ssp/SSPDangerZoneContext;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Landroid/hardware/ssp/SSPDangerZoneContext$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/ssp/SSPDangerZoneContext;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/ssp/SSPDangerZoneContext;
    .locals 1
    .parameter "size"

    .prologue
    .line 154
    new-array v0, p1, [Landroid/hardware/ssp/SSPDangerZoneContext;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Landroid/hardware/ssp/SSPDangerZoneContext$1;->newArray(I)[Landroid/hardware/ssp/SSPDangerZoneContext;

    move-result-object v0

    return-object v0
.end method
