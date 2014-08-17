.class public Landroid/hardware/ssp/SSPZoneContext;
.super Ljava/lang/Object;
.source "SSPZoneContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/ssp/SSPZoneContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Landroid/hardware/ssp/SSPZoneContext$1;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPZoneContext$1;-><init>()V

    sput-object v0, Landroid/hardware/ssp/SSPZoneContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Landroid/hardware/ssp/SSPZoneContext;->type:I

    .line 36
    iput v0, p0, Landroid/hardware/ssp/SSPZoneContext;->action:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-direct {p0, p1}, Landroid/hardware/ssp/SSPZoneContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 47
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPZoneContext;->type:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPZoneContext;->action:I

    .line 117
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Landroid/hardware/ssp/SSPZoneContext;->action:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Landroid/hardware/ssp/SSPZoneContext;->type:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 84
    iput p1, p0, Landroid/hardware/ssp/SSPZoneContext;->action:I

    .line 85
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 65
    iput p1, p0, Landroid/hardware/ssp/SSPZoneContext;->type:I

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 104
    iget v0, p0, Landroid/hardware/ssp/SSPZoneContext;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Landroid/hardware/ssp/SSPZoneContext;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void
.end method
