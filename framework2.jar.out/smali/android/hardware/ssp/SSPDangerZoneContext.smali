.class public Landroid/hardware/ssp/SSPDangerZoneContext;
.super Ljava/lang/Object;
.source "SSPDangerZoneContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/ssp/SSPDangerZoneContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:I

.field private category:I

.field private level:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Landroid/hardware/ssp/SSPDangerZoneContext$1;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPDangerZoneContext$1;-><init>()V

    sput-object v0, Landroid/hardware/ssp/SSPDangerZoneContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Landroid/hardware/ssp/SSPDangerZoneContext;->category:I

    .line 39
    iput v0, p0, Landroid/hardware/ssp/SSPDangerZoneContext;->action:I

    .line 40
    iput v0, p0, Landroid/hardware/ssp/SSPDangerZoneContext;->level:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-direct {p0, p1}, Landroid/hardware/ssp/SSPDangerZoneContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 51
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPDangerZoneContext;->category:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPDangerZoneContext;->action:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/ssp/SSPDangerZoneContext;->level:I

    .line 142
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Landroid/hardware/ssp/SSPDangerZoneContext;->action:I

    return v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Landroid/hardware/ssp/SSPDangerZoneContext;->category:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/hardware/ssp/SSPDangerZoneContext;->level:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 88
    iput p1, p0, Landroid/hardware/ssp/SSPDangerZoneContext;->action:I

    .line 89
    return-void
.end method

.method public setCategory(I)V
    .locals 0
    .parameter "category"

    .prologue
    .line 69
    iput p1, p0, Landroid/hardware/ssp/SSPDangerZoneContext;->category:I

    .line 70
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 107
    iput p1, p0, Landroid/hardware/ssp/SSPDangerZoneContext;->level:I

    .line 108
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 127
    iget v0, p0, Landroid/hardware/ssp/SSPDangerZoneContext;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Landroid/hardware/ssp/SSPDangerZoneContext;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Landroid/hardware/ssp/SSPDangerZoneContext;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return-void
.end method
