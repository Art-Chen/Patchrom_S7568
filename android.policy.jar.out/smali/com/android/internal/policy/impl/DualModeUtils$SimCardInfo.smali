.class Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;
.super Ljava/lang/Object;
.source "DualModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DualModeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimCardInfo"
.end annotation


# instance fields
.field SIMName:Ljava/lang/String;

.field dataService:Ljava/lang/String;

.field nIconIndex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sIMName"
    .parameter "index"

    .prologue
    .line 756
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 751
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->SIMName:Ljava/lang/String;

    .line 752
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->nIconIndex:Ljava/lang/String;

    .line 753
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->dataService:Ljava/lang/String;

    .line 757
    iput-object p1, p0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->SIMName:Ljava/lang/String;

    .line 758
    iput-object p2, p0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->nIconIndex:Ljava/lang/String;

    .line 759
    return-void
.end method
