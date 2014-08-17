.class public Lcom/android/server/sec/MultiWindowDataList;
.super Ljava/lang/Object;
.source "MultiWindowDataList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/MultiWindowDataList$1;,
        Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;,
        Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;
    }
.end annotation


# static fields
.field private static POSSIBLE:Z = false

.field private static final _NORMAL:Ljava/lang/String; = "Normal"

.field private static mInstance:Lcom/android/server/sec/MultiWindowDataList;

.field private static mUnregistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MultiWindowDataItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTypeList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/sec/multiwindow/MultiWindowType;",
            "Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowType:Landroid/sec/multiwindow/MultiWindowType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/sec/MultiWindowDataList;->POSSIBLE:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    iput-object p1, p0, Lcom/android/server/sec/MultiWindowDataList;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/sec/MultiWindowDataList;->mUnregistList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/server/sec/MultiWindowDataList;->LoadFromSetting()V

    return-void
.end method

.method private LoadFromSetting()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/sec/MultiWindowDataList;->POSSIBLE:Z

    const-string v0, ""

    .local v0, xml:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-direct {p0, v0}, Lcom/android/server/sec/MultiWindowDataList;->readAvailableAppList(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/sec/MultiWindowDataList;->POSSIBLE:Z

    return-void
.end method

.method private static SaveToSetting()V
    .locals 2

    .prologue
    sget-boolean v1, Lcom/android/server/sec/MultiWindowDataList;->POSSIBLE:Z

    if-nez v1, :cond_1

    .local v0, xml:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .end local v0           #xml:Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/android/server/sec/MultiWindowDataList;->mInstance:Lcom/android/server/sec/MultiWindowDataList;

    invoke-direct {v1}, Lcom/android/server/sec/MultiWindowDataList;->getAvailableAppList()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #xml:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/android/server/sec/MultiWindowDataList;->SaveToSetting()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/sec/MultiWindowDataList;->mUnregistList:Ljava/util/List;

    return-object v0
.end method

.method private getAvailableAppList()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, ""

    .local v0, Result:Ljava/lang/String;
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/sec/MultiWindowDataList;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/sec/MultiWindowDataList;->mInstance:Lcom/android/server/sec/MultiWindowDataList;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/sec/MultiWindowDataList;
    .locals 1
    .parameter "context"

    .prologue
    sget-object v0, Lcom/android/server/sec/MultiWindowDataList;->mInstance:Lcom/android/server/sec/MultiWindowDataList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/sec/MultiWindowDataList;

    invoke-direct {v0, p0}, Lcom/android/server/sec/MultiWindowDataList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/sec/MultiWindowDataList;->mInstance:Lcom/android/server/sec/MultiWindowDataList;

    :cond_0
    sget-object v0, Lcom/android/server/sec/MultiWindowDataList;->mInstance:Lcom/android/server/sec/MultiWindowDataList;

    return-object v0
.end method

.method private readAvailableAppList(Ljava/lang/String;)V
    .locals 0
    .parameter "xml"

    .prologue
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MultiWindowDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    iget-object v11, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v9, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;-><init>(Lcom/android/server/sec/MultiWindowDataList$1;)V

    .local v9, typeList:Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    iget-object v11, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v9, p1}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v10, "Normal"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "Normal"

    invoke-virtual {v9, v10}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v3, 0x0

    .local v3, isEqual:Z
    const-string v10, "Normal"

    invoke-virtual {v9, v10}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .local v6, nomalList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MultiWindowDataItem;

    .local v4, nItem:Lcom/android/server/sec/MultiWindowDataItem;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sec/MultiWindowDataItem;

    .local v7, sItem:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v10, v7, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .local v8, sString:Ljava/lang/String;
    iget-object v10, v4, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .local v5, nString:Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v3, 0x1

    .end local v5           #nString:Ljava/lang/String;
    .end local v7           #sItem:Lcom/android/server/sec/MultiWindowDataItem;
    .end local v8           #sString:Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isEqual:Z
    .end local v4           #nItem:Lcom/android/server/sec/MultiWindowDataItem;
    .end local v6           #nomalList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    .end local v9           #typeList:Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;
    :cond_3
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    iget-object v11, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;

    .restart local v9       #typeList:Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;
    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getDataItem(Ljava/lang/String;)Lcom/android/server/sec/MultiWindowDataItem;
    .locals 9
    .parameter "packageName"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    iget-object v8, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v1, v0

    .end local v0           #Result:Lcom/android/server/sec/MultiWindowDataItem;
    .local v1, Result:Lcom/android/server/sec/MultiWindowDataItem;
    :goto_0
    return-object v1

    .end local v1           #Result:Lcom/android/server/sec/MultiWindowDataItem;
    .restart local v0       #Result:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_0
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    iget-object v8, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;

    .local v6, typeList:Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;
    invoke-virtual {v6}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .local v4, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MultiWindowDataItem;

    .local v3, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v7, v3, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v0, v3

    move-object v1, v0

    .end local v0           #Result:Lcom/android/server/sec/MultiWindowDataItem;
    .restart local v1       #Result:Lcom/android/server/sec/MultiWindowDataItem;
    goto :goto_0

    .end local v1           #Result:Lcom/android/server/sec/MultiWindowDataItem;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/android/server/sec/MultiWindowDataItem;
    .end local v4           #itemList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    .restart local v0       #Result:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_3
    move-object v1, v0

    .end local v0           #Result:Lcom/android/server/sec/MultiWindowDataItem;
    .restart local v1       #Result:Lcom/android/server/sec/MultiWindowDataItem;
    goto :goto_0
.end method

.method public getKeys()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MultiWindowDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, pkg:Ljava/lang/String;
    new-instance v3, Lcom/android/server/sec/MultiWindowDataItem;

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, ""

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4, v6, v6, v6}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;IIZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getNormal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MultiWindowDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "Normal"

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowDataList;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Landroid/sec/multiwindow/MultiWindowType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    return-object v0
.end method

.method public getUnregistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MultiWindowDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/sec/MultiWindowDataList;->mUnregistList:Ljava/util/List;

    return-object v0
.end method

.method public isMultiWindow(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "src"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    const-string v2, "Normal"

    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowDataList;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;

    .local v1, list:Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;
    invoke-virtual {v1, p1}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isMultiWindow(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "Owner"
    .parameter "src"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;

    invoke-virtual {v3, p1}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;

    invoke-virtual {v3, p1}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;

    .local v2, list:Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;
    invoke-virtual {v2, p2}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v0

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public isMultiWindowFromAll(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "src"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowDataList;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;

    .local v3, list:Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;
    invoke-virtual {v3, p1}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .end local v3           #list:Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;
    :cond_2
    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MultiWindowDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;

    invoke-virtual {v1, p1}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    goto :goto_0
.end method

.method public remove(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "Owner"
    .parameter "src"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowDataList;->mTypeList:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;->remove(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public setType(Landroid/sec/multiwindow/MultiWindowType;)V
    .locals 0
    .parameter "eType"

    .prologue
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowDataList;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    return-void
.end method
