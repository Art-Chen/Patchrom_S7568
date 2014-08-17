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
    .line 1433
    const/4 v0, 0x1

    sput-boolean v0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->DBG:Z

    .line 1639
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1568
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1437
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_length:I

    .line 1438
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    .line 1439
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    .line 1440
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    .line 1441
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    .line 1442
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    .line 1569
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_length:I

    .line 1570
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    .line 1571
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    .line 1572
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    .line 1573
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    .line 1574
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    .line 1576
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->printOODData()V

    .line 1577
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[B)V
    .locals 1
    .parameter "address"
    .parameter "hash"
    .parameter "rand"

    .prologue
    .line 1585
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1437
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_length:I

    .line 1438
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    .line 1439
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    .line 1440
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    .line 1441
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    .line 1442
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    .line 1586
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1588
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->setAddressOOB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1594
    :goto_0
    return-void

    .line 1591
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->getLengthOOB()I

    .line 1593
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
    .line 1601
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1437
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_length:I

    .line 1438
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    .line 1439
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    .line 1440
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    .line 1441
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    .line 1442
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    .line 1602
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1604
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->setAddressOOB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1616
    :cond_0
    :goto_0
    return-void

    .line 1607
    :cond_1
    invoke-virtual {p0, p4}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->setCODOOB(Ljava/lang/String;)Z

    .line 1608
    invoke-virtual {p0, p5}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->setUUIDOOB(Ljava/lang/String;)Z

    .line 1610
    invoke-virtual {p0, p6}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->setNameOOB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->getLengthOOB()I

    .line 1615
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->printOODData()V

    goto :goto_0
.end method

.method private printOODData()V
    .locals 3

    .prologue
    .line 1620
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

    .line 1622
    :cond_0
    const-string v0, "BluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "length = ["

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

    .line 1623
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

    .line 1624
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1627
    const/4 v0, 0x0

    return v0
.end method

.method public getAddressOOB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1496
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressinitOOB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    return-object v0
.end method

.method public getCODOOB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    return-object v0
.end method

.method public getLengthOOB()I
    .locals 6

    .prologue
    .line 1532
    const/4 v2, 0x0

    .line 1533
    .local v2, address_length:I
    const/4 v0, 0x0

    .line 1534
    .local v0, COD_length:I
    const/4 v1, 0x0

    .line 1535
    .local v1, UUID_length:I
    const/4 v3, 0x0

    .line 1537
    .local v3, name_length:I
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1538
    const-string v4, "BluetoothAdapter"

    const-string v5, "It\'s not exist Bluetooth address"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1543
    const-string v4, "BluetoothAdapter"

    const-string v5, "It\'s not exist Bluetooth address"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :goto_1
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 1548
    const-string v4, "BluetoothAdapter"

    const-string v5, "It\'s not exist Bluetooth address"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :goto_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 1553
    const-string v4, "BluetoothAdapter"

    const-string v5, "It\'s not exist Bluetooth address"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :goto_3
    add-int v4, v2, v0

    add-int/2addr v4, v1

    add-int/2addr v4, v3

    iput v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_length:I

    .line 1560
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_length:I

    return v4

    .line 1540
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    .line 1545
    :cond_1
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    .line 1550
    :cond_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2

    .line 1555
    :cond_3
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_3
.end method

.method public getNameOOB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUUIDOOB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1521
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    .line 1523
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    return-object v0
.end method

.method public setAddressOOB(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/16 v5, 0x11

    const/4 v1, 0x0

    .line 1446
    if-nez p1, :cond_0

    .line 1447
    const-string v2, "BluetoothAdapter"

    const-string v3, "It\'s not exist Bluetooth address"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :goto_0
    return v1

    .line 1451
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1454
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

    .line 1456
    const/4 v2, 0x2

    const-string v3, ":"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    const/4 v2, 0x4

    const-string v3, ":"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    const/4 v2, 0x6

    const-string v3, ":"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    const/16 v2, 0x8

    const-string v3, ":"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    const/16 v2, 0xa

    const-string v3, ":"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1463
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

    .line 1465
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 1466
    const-string v2, "BluetoothAdapter"

    const-string v3, "It\'s incorrect Bluetooth address"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1471
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_1
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    .line 1472
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    .line 1473
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setCODOOB(Ljava/lang/String;)Z
    .locals 1
    .parameter "COD"

    .prologue
    .line 1477
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    .line 1478
    const/4 v0, 0x1

    return v0
.end method

.method public setNameOOB(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 1487
    if-nez p1, :cond_0

    .line 1488
    const-string v0, "BluetoothAdapter"

    const-string v1, "It\'s incorrect rand length"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const/4 v0, 0x0

    .line 1492
    :goto_0
    return v0

    .line 1491
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    .line 1492
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setUUIDOOB(Ljava/lang/String;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    .line 1482
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    .line 1483
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1631
    iget v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1632
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1633
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_address_init:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1634
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_COD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1635
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_UUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->mOOB_Data_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1637
    return-void
.end method
