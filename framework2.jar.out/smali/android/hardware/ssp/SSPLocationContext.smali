.class public Landroid/hardware/ssp/SSPLocationContext;
.super Ljava/lang/Object;
.source "SSPLocationContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/ssp/SSPLocationContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accuracy:F

.field private altitude:D

.field private heading:F

.field private latitude:D

.field private longitude:D

.field private speed:F

.field private sysTime:J

.field private timeStamp:J

.field private valid:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 295
    new-instance v0, Landroid/hardware/ssp/SSPLocationContext$1;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPLocationContext$1;-><init>()V

    sput-object v0, Landroid/hardware/ssp/SSPLocationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/hardware/ssp/SSPLocationContext;->valid:[Z

    .line 56
    iput-wide v5, p0, Landroid/hardware/ssp/SSPLocationContext;->sysTime:J

    .line 57
    iput-wide v5, p0, Landroid/hardware/ssp/SSPLocationContext;->timeStamp:J

    .line 58
    iput-wide v1, p0, Landroid/hardware/ssp/SSPLocationContext;->latitude:D

    .line 59
    iput-wide v1, p0, Landroid/hardware/ssp/SSPLocationContext;->longitude:D

    .line 60
    iput-wide v1, p0, Landroid/hardware/ssp/SSPLocationContext;->altitude:D

    .line 61
    iput v3, p0, Landroid/hardware/ssp/SSPLocationContext;->accuracy:F

    .line 62
    iput v3, p0, Landroid/hardware/ssp/SSPLocationContext;->speed:F

    .line 63
    iput v3, p0, Landroid/hardware/ssp/SSPLocationContext;->heading:F

    .line 64
    iget-object v0, p0, Landroid/hardware/ssp/SSPLocationContext;->valid:[Z

    aput-boolean v4, v0, v4

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/hardware/ssp/SSPLocationContext;->valid:[Z

    .line 74
    invoke-direct {p0, p1}, Landroid/hardware/ssp/SSPLocationContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 75
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/ssp/SSPLocationContext;->sysTime:J

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/ssp/SSPLocationContext;->timeStamp:J

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/ssp/SSPLocationContext;->latitude:D

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/ssp/SSPLocationContext;->longitude:D

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/ssp/SSPLocationContext;->altitude:D

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPLocationContext;->accuracy:F

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPLocationContext;->heading:F

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPLocationContext;->speed:F

    .line 291
    iget-object v0, p0, Landroid/hardware/ssp/SSPLocationContext;->valid:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 292
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Landroid/hardware/ssp/SSPLocationContext;->accuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Landroid/hardware/ssp/SSPLocationContext;->altitude:D

    return-wide v0
.end method

.method public getHeading()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Landroid/hardware/ssp/SSPLocationContext;->heading:F

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Landroid/hardware/ssp/SSPLocationContext;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Landroid/hardware/ssp/SSPLocationContext;->longitude:D

    return-wide v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Landroid/hardware/ssp/SSPLocationContext;->speed:F

    return v0
.end method

.method public getSysTime()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Landroid/hardware/ssp/SSPLocationContext;->sysTime:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Landroid/hardware/ssp/SSPLocationContext;->timeStamp:J

    return-wide v0
.end method

.method public getValid()Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Landroid/hardware/ssp/SSPLocationContext;->valid:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setAccuracy(F)V
    .locals 0
    .parameter "accuracy"

    .prologue
    .line 188
    iput p1, p0, Landroid/hardware/ssp/SSPLocationContext;->accuracy:F

    .line 189
    return-void
.end method

.method public setAltitude(D)V
    .locals 0
    .parameter "altitude"

    .prologue
    .line 169
    iput-wide p1, p0, Landroid/hardware/ssp/SSPLocationContext;->altitude:D

    .line 170
    return-void
.end method

.method public setHeading(F)V
    .locals 0
    .parameter "heading"

    .prologue
    .line 207
    iput p1, p0, Landroid/hardware/ssp/SSPLocationContext;->heading:F

    .line 208
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 131
    iput-wide p1, p0, Landroid/hardware/ssp/SSPLocationContext;->latitude:D

    .line 132
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 150
    iput-wide p1, p0, Landroid/hardware/ssp/SSPLocationContext;->longitude:D

    .line 151
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 226
    iput p1, p0, Landroid/hardware/ssp/SSPLocationContext;->speed:F

    .line 227
    return-void
.end method

.method public setSysTime(J)V
    .locals 0
    .parameter "sysTime"

    .prologue
    .line 93
    iput-wide p1, p0, Landroid/hardware/ssp/SSPLocationContext;->sysTime:J

    .line 94
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .parameter "timeStamp"

    .prologue
    .line 112
    iput-wide p1, p0, Landroid/hardware/ssp/SSPLocationContext;->timeStamp:J

    .line 113
    return-void
.end method

.method public setValid(Z)V
    .locals 2
    .parameter "valid"

    .prologue
    .line 245
    iget-object v0, p0, Landroid/hardware/ssp/SSPLocationContext;->valid:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 246
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 265
    iget-wide v0, p0, Landroid/hardware/ssp/SSPLocationContext;->sysTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 266
    iget-wide v0, p0, Landroid/hardware/ssp/SSPLocationContext;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 267
    iget-wide v0, p0, Landroid/hardware/ssp/SSPLocationContext;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 268
    iget-wide v0, p0, Landroid/hardware/ssp/SSPLocationContext;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 269
    iget-wide v0, p0, Landroid/hardware/ssp/SSPLocationContext;->altitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 270
    iget v0, p0, Landroid/hardware/ssp/SSPLocationContext;->accuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 271
    iget v0, p0, Landroid/hardware/ssp/SSPLocationContext;->heading:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 272
    iget v0, p0, Landroid/hardware/ssp/SSPLocationContext;->speed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 273
    iget-object v0, p0, Landroid/hardware/ssp/SSPLocationContext;->valid:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 274
    return-void
.end method
