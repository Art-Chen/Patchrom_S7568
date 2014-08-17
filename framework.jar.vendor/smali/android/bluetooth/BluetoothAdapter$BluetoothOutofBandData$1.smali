.class final Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData$1;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;
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
        "Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1639
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;
    .locals 2
    .parameter "in"

    .prologue
    .line 1641
    const-string v0, "BluetoothAdapter"

    const-string v1, "createFromParcel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1639
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;
    .locals 2
    .parameter "size"

    .prologue
    .line 1645
    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "newArray"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    new-array v0, p1, [Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1639
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData$1;->newArray(I)[Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;

    move-result-object v0

    return-object v0
.end method
