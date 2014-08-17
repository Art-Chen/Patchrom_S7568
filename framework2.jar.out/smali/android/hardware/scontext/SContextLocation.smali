.class public Landroid/hardware/scontext/SContextLocation;
.super Ljava/lang/Object;
.source "SContextLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private latitude:D

.field private longitude:D

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Landroid/hardware/scontext/SContextLocation$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextLocation$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextLocation;->timestamp:J

    .line 17
    iput-wide v2, p0, Landroid/hardware/scontext/SContextLocation;->latitude:D

    .line 18
    iput-wide v2, p0, Landroid/hardware/scontext/SContextLocation;->longitude:D

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextLocation;->readFromParcel(Landroid/os/Parcel;)V

    .line 23
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextLocation;->timestamp:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextLocation;->latitude:D

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextLocation;->longitude:D

    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Landroid/hardware/scontext/SContextLocation;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Landroid/hardware/scontext/SContextLocation;->longitude:D

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Landroid/hardware/scontext/SContextLocation;->timestamp:J

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 38
    iput-wide p1, p0, Landroid/hardware/scontext/SContextLocation;->latitude:D

    .line 39
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 46
    iput-wide p1, p0, Landroid/hardware/scontext/SContextLocation;->longitude:D

    .line 47
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 30
    iput-wide p1, p0, Landroid/hardware/scontext/SContextLocation;->timestamp:J

    .line 31
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 57
    iget-wide v0, p0, Landroid/hardware/scontext/SContextLocation;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-wide v0, p0, Landroid/hardware/scontext/SContextLocation;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 59
    iget-wide v0, p0, Landroid/hardware/scontext/SContextLocation;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 60
    return-void
.end method
