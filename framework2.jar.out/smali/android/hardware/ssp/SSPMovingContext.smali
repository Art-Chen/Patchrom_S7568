.class public Landroid/hardware/ssp/SSPMovingContext;
.super Ljava/lang/Object;
.source "SSPMovingContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/ssp/SSPMovingContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mode:I

.field private move:I

.field private step:I

.field private transMethod:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Landroid/hardware/ssp/SSPMovingContext$1;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPMovingContext$1;-><init>()V

    sput-object v0, Landroid/hardware/ssp/SSPMovingContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Landroid/hardware/ssp/SSPMovingContext;->transMethod:I

    .line 42
    iput v0, p0, Landroid/hardware/ssp/SSPMovingContext;->move:I

    .line 43
    iput v0, p0, Landroid/hardware/ssp/SSPMovingContext;->mode:I

    .line 44
    iput v0, p0, Landroid/hardware/ssp/SSPMovingContext;->step:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-direct {p0, p1}, Landroid/hardware/ssp/SSPMovingContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 55
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPMovingContext;->transMethod:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPMovingContext;->move:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPMovingContext;->mode:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPMovingContext;->step:I

    .line 167
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/hardware/ssp/SSPMovingContext;->mode:I

    return v0
.end method

.method public getMove()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Landroid/hardware/ssp/SSPMovingContext;->move:I

    return v0
.end method

.method public getStep()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Landroid/hardware/ssp/SSPMovingContext;->step:I

    return v0
.end method

.method public getTransMethod()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Landroid/hardware/ssp/SSPMovingContext;->transMethod:I

    return v0
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 111
    iput p1, p0, Landroid/hardware/ssp/SSPMovingContext;->mode:I

    .line 112
    return-void
.end method

.method public setMove(I)V
    .locals 0
    .parameter "move"

    .prologue
    .line 92
    iput p1, p0, Landroid/hardware/ssp/SSPMovingContext;->move:I

    .line 93
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .parameter "step"

    .prologue
    .line 130
    iput p1, p0, Landroid/hardware/ssp/SSPMovingContext;->step:I

    .line 131
    return-void
.end method

.method public setTransMethod(I)V
    .locals 0
    .parameter "transMethod"

    .prologue
    .line 73
    iput p1, p0, Landroid/hardware/ssp/SSPMovingContext;->transMethod:I

    .line 74
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 150
    iget v0, p0, Landroid/hardware/ssp/SSPMovingContext;->transMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Landroid/hardware/ssp/SSPMovingContext;->move:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Landroid/hardware/ssp/SSPMovingContext;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Landroid/hardware/ssp/SSPMovingContext;->step:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return-void
.end method
