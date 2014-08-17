.class public Lcom/android/server/sec/MultiWindowDataItem;
.super Ljava/lang/Object;
.source "MultiWindowDataItem.java"


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public isFixedRatio:Z

.field public mFixedSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field public minHeight:I

.field public minWidth:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "componentName"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;II)V
    .locals 1
    .parameter "componentName"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;IIZ)V
    .locals 0
    .parameter "componentName"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "isFixedRatio"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    iput p2, p0, Lcom/android/server/sec/MultiWindowDataItem;->minWidth:I

    iput p3, p0, Lcom/android/server/sec/MultiWindowDataItem;->minHeight:I

    iput-boolean p4, p0, Lcom/android/server/sec/MultiWindowDataItem;->isFixedRatio:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 2
    .parameter "componentName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, minSize:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/server/sec/MultiWindowDataItem;->mFixedSizeList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/server/sec/MultiWindowDataItem;->minWidth:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/server/sec/MultiWindowDataItem;->minHeight:I

    :cond_0
    return-void
.end method
