.class public Lcom/android/server/sec/MultiWindowModule$CheckTaskItem;
.super Ljava/lang/Object;
.source "MultiWindowModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/MultiWindowModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckTaskItem"
.end annotation


# static fields
.field public static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/sec/MultiWindowModule$CheckTaskItem;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2550
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 2572
    sget-object v0, Lcom/android/server/sec/MultiWindowModule$CheckTaskItem;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2573
    return-void
.end method

.method public static isItemCheck(Landroid/content/ComponentName;I)Z
    .locals 5
    .parameter "cn"
    .parameter "index"

    .prologue
    .line 2558
    const/4 v0, 0x0

    .line 2559
    .local v0, Result:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/android/server/sec/MultiWindowModule$CheckTaskItem;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 2560
    sget-object v4, Lcom/android/server/sec/MultiWindowModule$CheckTaskItem;->list:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 2561
    .local v2, mHashList:Ljava/util/Map;
    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2562
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2563
    .local v3, v:I
    if-ne v3, p1, :cond_1

    .line 2564
    const/4 v0, 0x1

    .line 2569
    .end local v2           #mHashList:Ljava/util/Map;
    .end local v3           #v:I
    :cond_0
    return v0

    .line 2559
    .restart local v2       #mHashList:Ljava/util/Map;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static setItemIndex(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "cn"
    .parameter "index"

    .prologue
    .line 2553
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2554
    .local v0, mHashList:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2555
    sget-object v1, Lcom/android/server/sec/MultiWindowModule$CheckTaskItem;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2556
    return-void
.end method
