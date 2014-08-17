.class public Landroid/hardware/ssp/SSPBleContext;
.super Ljava/lang/Object;
.source "SSPBleContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field protected static final BLE_MAX_COUNT:I = 0xa

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/ssp/SSPBleContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:I

.field private id:[Ljava/lang/String;

.field private mMaxCount:I

.field private rssi:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Landroid/hardware/ssp/SSPBleContext$1;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPBleContext$1;-><init>()V

    sput-object v0, Landroid/hardware/ssp/SSPBleContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v3, p0, Landroid/hardware/ssp/SSPBleContext;->mMaxCount:I

    .line 44
    iput v4, p0, Landroid/hardware/ssp/SSPBleContext;->count:I

    .line 45
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Landroid/hardware/ssp/SSPBleContext;->id:[Ljava/lang/String;

    .line 46
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/hardware/ssp/SSPBleContext;->rssi:[I

    .line 47
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 48
    iget-object v1, p0, Landroid/hardware/ssp/SSPBleContext;->id:[Ljava/lang/String;

    const-string v2, "00:00:00:00:00:00"

    aput-object v2, v1, v0

    .line 49
    iget-object v1, p0, Landroid/hardware/ssp/SSPBleContext;->rssi:[I

    aput v4, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "maxCount"

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Landroid/hardware/ssp/SSPBleContext;->mMaxCount:I

    .line 55
    iput v3, p0, Landroid/hardware/ssp/SSPBleContext;->count:I

    .line 56
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/hardware/ssp/SSPBleContext;->id:[Ljava/lang/String;

    .line 57
    new-array v1, p1, [I

    iput-object v1, p0, Landroid/hardware/ssp/SSPBleContext;->rssi:[I

    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 59
    iget-object v1, p0, Landroid/hardware/ssp/SSPBleContext;->id:[Ljava/lang/String;

    const-string v2, "00:00:00:00:00:00"

    aput-object v2, v1, v0

    .line 60
    iget-object v1, p0, Landroid/hardware/ssp/SSPBleContext;->rssi:[I

    aput v3, v1, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-direct {p0, p1}, Landroid/hardware/ssp/SSPBleContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 72
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPBleContext;->count:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/ssp/SSPBleContext;->id:[Ljava/lang/String;

    .line 164
    iget-object v0, p0, Landroid/hardware/ssp/SSPBleContext;->id:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/ssp/SSPBleContext;->rssi:[I

    .line 166
    iget-object v0, p0, Landroid/hardware/ssp/SSPBleContext;->rssi:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 167
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Landroid/hardware/ssp/SSPBleContext;->count:I

    return v0
.end method

.method public getId()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/hardware/ssp/SSPBleContext;->id:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()[I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/hardware/ssp/SSPBleContext;->rssi:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 90
    iput p1, p0, Landroid/hardware/ssp/SSPBleContext;->count:I

    .line 91
    return-void
.end method

.method public setId([Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 109
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/ssp/SSPBleContext;->id:[Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setRssi([I)V
    .locals 1
    .parameter "rssi"

    .prologue
    .line 128
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/hardware/ssp/SSPBleContext;->rssi:[I

    .line 129
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 148
    iget v0, p0, Landroid/hardware/ssp/SSPBleContext;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Landroid/hardware/ssp/SSPBleContext;->id:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Landroid/hardware/ssp/SSPBleContext;->id:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Landroid/hardware/ssp/SSPBleContext;->rssi:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Landroid/hardware/ssp/SSPBleContext;->rssi:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 153
    return-void
.end method
