.class Landroid/webkit/WebviewScaleGestureDetector$SaveState;
.super Ljava/lang/Object;
.source "WebviewScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebviewScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveState"
.end annotation


# instance fields
.field beginX:F

.field beginY:F

.field mFingerDiffX:F

.field mFingerDiffY:F

.field mLen:F

.field mLenBeforeSqrt:F

.field mTimeStamp:J

.field maxX:F

.field maxY:F

.field minX:F

.field minY:F

.field final synthetic this$0:Landroid/webkit/WebviewScaleGestureDetector;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Landroid/webkit/WebviewScaleGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->this$0:Landroid/webkit/WebviewScaleGestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->reset()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 3

    .prologue
    const/high16 v0, -0x4080

    const/4 v2, 0x0

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->y:F

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->x:F

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->beginY:F

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->beginX:F

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxY:F

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->maxX:F

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minY:F

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->minX:F

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLen:F

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mTimeStamp:J

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffX:F

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector$SaveState;->mFingerDiffY:F

    return-void
.end method
