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
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->SIMName:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->nIconIndex:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->dataService:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->SIMName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->nIconIndex:Ljava/lang/String;

    return-void
.end method
