.class public Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothOutofBandData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;",
            ">;"
        }
    .end annotation
.end field

.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapter"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mOOB_Data_COD:Ljava/lang/String;

.field private mOOB_Data_UUID:Ljava/lang/String;

.field private mOOB_Data_address:Ljava/lang/String;

.field private mOOB_Data_address_init:Ljava/lang/String;

.field private mOOB_Data_length:I

.field private mOOB_Data_name:Ljava/lang/String;

.field private mUuids:[Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->DBG:Z

    new-instance v0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_length:I

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_length:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->printOODData()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[B)V
    .locals 1
    .parameter "address"
    .parameter "hash"
    .parameter "rand"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_length:I

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->setAddressOOB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->getLengthOOB()I

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->printOODData()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "address"
    .parameter "hash"
    .parameter "rand"
    .parameter "COD"
    .parameter "uuid"
    .parameter "name"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_length:I

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->setAddressOOB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p4}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->setCODOOB(Ljava/lang/String;)Z

    invoke-virtual {p0, p5}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->setUUIDOOB(Ljava/lang/String;)Z

    invoke-virtual {p0, p6}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->setNameOOB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->getLengthOOB()I

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->printOODData()V

    goto :goto_0
.end method

.method private printOODData()V
    .locals 3

    .prologue
    sget-boolean v0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Address = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Name = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "BluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] COD = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UUID = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAddressOOB()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressinitOOB()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    return-object v0
.end method

.method public getCODOOB()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    return-object v0
.end method

.method public getLengthOOB()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .local v2, address_length:I
    const/4 v0, 0x0

    .local v0, COD_length:I
    const/4 v1, 0x0

    .local v1, UUID_length:I
    const/4 v3, 0x0

    .local v3, name_length:I
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, "BluetoothAdapter"

    const-string v5, "It\'s not exist Bluetooth address"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "BluetoothAdapter"

    const-string v5, "It\'s not exist Bluetooth address"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, "BluetoothAdapter"

    const-string v5, "It\'s not exist Bluetooth address"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, "BluetoothAdapter"

    const-string v5, "It\'s not exist Bluetooth address"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int v4, v2, v0

    add-int/2addr v4, v1

    add-int/2addr v4, v3

    iput v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_length:I

    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_length:I

    return v4

    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_3
.end method

.method public getNameOOB()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUUIDOOB()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    return-object v0
.end method

.method public setAddressOOB(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/16 v5, 0x11

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v2, "BluetoothAdapter"

    const-string v3, "It\'s not exist Bluetooth address"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const-string v3, ":"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    const-string v3, ":"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    const-string v3, ":"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    const-string v3, ":"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    const-string v3, ":"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_1

    const-string v2, "BluetoothAdapter"

    const-string v3, "It\'s incorrect Bluetooth address"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_1
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setCODOOB(Ljava/lang/String;)Z
    .locals 1
    .parameter "COD"

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public setNameOOB(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    if-nez p1, :cond_0

    const-string v0, "BluetoothAdapter"

    const-string v1, "It\'s incorrect rand length"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setUUIDOOB(Ljava/lang/String;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
