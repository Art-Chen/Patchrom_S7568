.class public Lcom/android/server/sec/MWPackageItem;
.super Ljava/lang/Object;
.source "MWPackageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/MWPackageItem$taskItem;,
        Lcom/android/server/sec/MWPackageItem$InnerItem;,
        Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

.field protected mFixedSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field protected mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

.field protected mKeepRatio:Z

.field protected mListResumedTaskID:I

.field protected mMinimPoint:Landroid/graphics/Point;

.field protected mPackageName:Ljava/lang/String;

.field protected mPid:I

.field public mPreloadState:Z

.field protected mSubClassesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MWClassItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mTaskItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MWPackageItem$taskItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/sec/MWPackageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "appClass"
    .parameter "appPackage"

    .prologue
    sget-object v0, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sec/MWPackageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V
    .locals 1
    .parameter "appClass"
    .parameter "appPackage"
    .parameter "bLock"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/sec/MWPackageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;Ljava/util/List;)V
    .locals 8
    .parameter "appClass"
    .parameter "appPackage"
    .parameter "bLock"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, sizeList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "MWPackageItem"

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    iput v6, p0, Lcom/android/server/sec/MWPackageItem;->mListResumedTaskID:I

    iput-object p2, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    new-instance v3, Lcom/android/server/sec/MWPackageItem$taskItem;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v3, v6, p3, v4, v5}, Lcom/android/server/sec/MWPackageItem$taskItem;-><init>(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    iput-object v7, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/sec/MWPackageItem;->mKeepRatio:Z

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x190

    const/16 v4, 0xfa

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mMinimPoint:Landroid/graphics/Point;

    iput-object v7, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    iput v6, p0, Lcom/android/server/sec/MWPackageItem;->mPid:I

    iput-object p4, p0, Lcom/android/server/sec/MWPackageItem;->mFixedSizeList:Ljava/util/List;

    invoke-virtual {p0, p1, v6}, Lcom/android/server/sec/MWPackageItem;->addSubClassObject(Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/server/sec/MultiWindowDataList;->getInstance()Lcom/android/server/sec/MultiWindowDataList;

    move-result-object v0

    .local v0, instance:Lcom/android/server/sec/MultiWindowDataList;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/sec/MultiWindowDataList;->getDataItem(Ljava/lang/String;)Lcom/android/server/sec/MultiWindowDataItem;

    move-result-object v1

    .local v1, item:Lcom/android/server/sec/MultiWindowDataItem;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/sec/MultiWindowDataItem;->isFixedRatio:Z

    iput-boolean v2, p0, Lcom/android/server/sec/MWPackageItem;->mKeepRatio:Z

    iget-object v2, v1, Lcom/android/server/sec/MultiWindowDataItem;->mFixedSizeList:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mFixedSizeList:Ljava/util/List;

    iget v2, v1, Lcom/android/server/sec/MultiWindowDataItem;->minWidth:I

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/sec/MultiWindowDataItem;->minHeight:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mMinimPoint:Landroid/graphics/Point;

    iget v3, v1, Lcom/android/server/sec/MultiWindowDataItem;->minWidth:I

    iget v4, v1, Lcom/android/server/sec/MultiWindowDataItem;->minHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .end local v1           #item:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public addSubClassObject(Ljava/lang/String;I)Z
    .locals 6
    .parameter "sClassName"
    .parameter "taskId"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    :cond_0
    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    const-string v3, "MWPackageItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[addSubClassObject] sClassName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItem(Ljava/lang/String;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v2

    .local v2, obj:Lcom/android/server/sec/MWClassItem;
    if-nez v2, :cond_2

    new-instance v2, Lcom/android/server/sec/MWClassItem;

    .end local v2           #obj:Lcom/android/server/sec/MWClassItem;
    invoke-direct {v2, p1, p2}, Lcom/android/server/sec/MWClassItem;-><init>(Ljava/lang/String;I)V

    .restart local v2       #obj:Lcom/android/server/sec/MWClassItem;
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, -0x1

    invoke-virtual {p0, v3, p2}, Lcom/android/server/sec/MWPackageItem;->setTaskItem(II)V

    :goto_1
    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/sec/MWPackageItem;->setTaskItem(II)V

    goto :goto_1
.end method

.method public addSubClassObject(Ljava/lang/String;Landroid/sec/multiwindow/IMultiWindowAction;I)Z
    .locals 3
    .parameter "sClassName"
    .parameter "inMultiWindowAction"
    .parameter "taskId"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    invoke-virtual {p0, p1, p3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItem(Ljava/lang/String;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v1

    .local v1, obj:Lcom/android/server/sec/MWClassItem;
    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/sec/MWClassItem;

    .end local v1           #obj:Lcom/android/server/sec/MWClassItem;
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/sec/MWClassItem;-><init>(Ljava/lang/String;Landroid/sec/multiwindow/IMultiWindowAction;I)V

    .restart local v1       #obj:Lcom/android/server/sec/MWClassItem;
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {p0, v2, p3}, Lcom/android/server/sec/MWPackageItem;->setTaskItem(II)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v2

    invoke-virtual {p0, v2, p3}, Lcom/android/server/sec/MWPackageItem;->setTaskItem(II)V

    invoke-virtual {v1, p2, p3}, Lcom/android/server/sec/MWClassItem;->setMultiWindowAction(Landroid/sec/multiwindow/IMultiWindowAction;I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public assigned(Lcom/android/server/sec/MWPackageItem;)V
    .locals 3
    .parameter "src"

    .prologue
    const-string v0, "MWPackageItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Org Assgined=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/sec/MWPackageItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MWPackageItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dst Assgined=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sec/MWPackageItem;->setMultiWindowRect(ILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    iget-object v1, p1, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    iget-object v0, p1, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    iput-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    iget-boolean v0, p1, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    iput-boolean v0, p0, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/sec/MWPackageItem;->getRestoreRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sec/MWPackageItem;->setRestoreRect(ILandroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getKeepRatio()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MWPackageItem;->setKeepRatio(Z)V

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getMinimumPoint()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MWPackageItem;->setMinimumPoint(Landroid/graphics/Point;)Z

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MWPackageItem;->setBitmap(Landroid/graphics/Bitmap;)Z

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getPid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MWPackageItem;->setPid(I)V

    return-void
.end method

.method public findSubClassObject(Ljava/lang/String;)Z
    .locals 4
    .parameter "sClassName"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWClassItem;

    .local v2, item:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .end local v2           #item:Lcom/android/server/sec/MWClassItem;
    :cond_1
    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getComponentNameOfSubClass(Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 4
    .parameter "sClassName"
    .parameter "taskId"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Landroid/content/ComponentName;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItem(Ljava/lang/String;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v2

    .local v2, data:Lcom/android/server/sec/MWClassItem;
    if-nez v2, :cond_0

    move-object v1, v0

    .end local v0           #Result:Landroid/content/ComponentName;
    .local v1, Result:Landroid/content/ComponentName;
    :goto_0
    return-object v1

    .end local v1           #Result:Landroid/content/ComponentName;
    .restart local v0       #Result:Landroid/content/ComponentName;
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #Result:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #Result:Landroid/content/ComponentName;
    move-object v1, v0

    .end local v0           #Result:Landroid/content/ComponentName;
    .restart local v1       #Result:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public getEscapedItem()Lcom/android/server/sec/MWPackageItem$taskItem;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    return-object v0
.end method

.method public getFullScreenLock(I)Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;
    .locals 4
    .parameter "taskId"

    .prologue
    sget-object v2, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    .local v2, multiWindowFullScreenLock:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWPackageItem$taskItem;

    .local v1, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v3

    if-ne p1, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetFullScreenLock()Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move-result-object v2

    .end local v1           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_1
    return-object v2
.end method

.method public getInnerItem()Lcom/android/server/sec/MWPackageItem$InnerItem;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    return-object v0
.end method

.method public getKeepRatio()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/sec/MWPackageItem;->mKeepRatio:Z

    return v0
.end method

.method public getLastResumedTaskID()I
    .locals 3

    .prologue
    iget v0, p0, Lcom/android/server/sec/MWPackageItem;->mListResumedTaskID:I

    .local v0, result:I
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/server/sec/MWPackageItem;->mListResumedTaskID:I

    invoke-virtual {p0, v1}, Lcom/android/server/sec/MWPackageItem;->hasTaskItem(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWPackageItem$taskItem;

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v0

    goto :goto_0
.end method

.method public getMWClassItem(Ljava/lang/String;I)Lcom/android/server/sec/MWClassItem;
    .locals 7
    .parameter "sClassName"
    .parameter "taskId"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Lcom/android/server/sec/MWClassItem;
    if-nez p1, :cond_0

    move-object v1, v0

    .end local v0           #Result:Lcom/android/server/sec/MWClassItem;
    .local v1, Result:Lcom/android/server/sec/MWClassItem;
    :goto_0
    return-object v1

    .end local v1           #Result:Lcom/android/server/sec/MWClassItem;
    .restart local v0       #Result:Lcom/android/server/sec/MWClassItem;
    :cond_0
    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, cnt:I
    move v3, v2

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_2

    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MWClassItem;

    .local v4, obj:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v5

    if-ne v5, p2, :cond_3

    :cond_1
    move-object v0, v4

    .end local v4           #obj:Lcom/android/server/sec/MWClassItem;
    :cond_2
    move-object v1, v0

    .end local v0           #Result:Lcom/android/server/sec/MWClassItem;
    .restart local v1       #Result:Lcom/android/server/sec/MWClassItem;
    goto :goto_0

    .end local v1           #Result:Lcom/android/server/sec/MWClassItem;
    .restart local v0       #Result:Lcom/android/server/sec/MWClassItem;
    .restart local v4       #obj:Lcom/android/server/sec/MWClassItem;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method public getMWClassItemCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMWClassItemCount(I)I
    .locals 5
    .parameter "taskId"

    .prologue
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, len:I
    const/4 v3, 0x0

    .local v3, resultCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sec/MWClassItem;

    .local v0, cItem:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v0}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v4

    if-ne v4, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #cItem:Lcom/android/server/sec/MWClassItem;
    :cond_1
    return v3
.end method

.method public getMWClassItemFirstName()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const-string v0, ""

    .local v0, sClassName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, size:I
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWClassItem;

    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getMWClassItemIndex(I)Lcom/android/server/sec/MWClassItem;
    .locals 2
    .parameter "index"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWClassItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMWClassItemLast()Lcom/android/server/sec/MWClassItem;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, size:I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWClassItem;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMWClassItemLast(Landroid/content/ComponentName;I)Lcom/android/server/sec/MWClassItem;
    .locals 1
    .parameter "compName"
    .parameter "taskId"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast(Landroid/content/ComponentName;IZ)Lcom/android/server/sec/MWClassItem;

    move-result-object v0

    return-object v0
.end method

.method public getMWClassItemLast(Landroid/content/ComponentName;IZ)Lcom/android/server/sec/MWClassItem;
    .locals 6
    .parameter "compName"
    .parameter "taskId"
    .parameter "isCheckSameTask"

    .prologue
    const/4 v2, 0x0

    .local v2, result:Lcom/android/server/sec/MWClassItem;
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, size:I
    if-lez v3, :cond_2

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sec/MWClassItem;

    .local v0, cItem:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v0}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v4

    if-ne v4, p2, :cond_0

    if-eqz p3, :cond_1

    invoke-static {p1, v1}, Lcom/android/server/sec/MultiWindowModule$CheckTaskItem;->isItemCheck(Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move-object v2, v0

    if-eqz p3, :cond_2

    invoke-static {p1, v1}, Lcom/android/server/sec/MultiWindowModule$CheckTaskItem;->setItemIndex(Landroid/content/ComponentName;I)V

    .end local v0           #cItem:Lcom/android/server/sec/MWClassItem;
    .end local v1           #i:I
    :cond_2
    return-object v2
.end method

.method public getMWClassItemLastName()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const-string v0, ""

    .local v0, sClassName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, size:I
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWClassItem;

    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getMinimumPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mMinimPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMultiWindowRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v3

    .local v3, taskId:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, applicationRect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem$taskItem;

    .local v2, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    .end local v2           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_1
    return-object v0
.end method

.method public getMultiWindowRect(I)Landroid/graphics/Rect;
    .locals 4
    .parameter "taskId"

    .prologue
    if-gez p1, :cond_1

    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    iget-object v0, v3, Lcom/android/server/sec/MWPackageItem$taskItem;->mApplicationRect:Landroid/graphics/Rect;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, applicationRect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem$taskItem;

    .local v2, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v3

    if-ne p1, v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/sec/MWPackageItem;->mPid:I

    return v0
.end method

.method public getRestoreRect(I)Landroid/graphics/Rect;
    .locals 4
    .parameter "taskId"

    .prologue
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .local v2, restoreRect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWPackageItem$taskItem;

    .local v1, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v3

    if-ne p1, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetRestoreRect()Landroid/graphics/Rect;

    move-result-object v2

    .end local v1           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_1
    return-object v2
.end method

.method public getSubClassActionList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/sec/multiwindow/IMultiWindowAction;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .local v3, iCnt:I
    const/4 v4, 0x0

    .local v4, obj:Lcom/android/server/sec/MWClassItem;
    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #obj:Lcom/android/server/sec/MWClassItem;
    check-cast v4, Lcom/android/server/sec/MWClassItem;

    .restart local v4       #obj:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v1

    .local v1, action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v1           #action:Landroid/sec/multiwindow/IMultiWindowAction;
    :cond_1
    return-object v0
.end method

.method public getSubClassComponentNameList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWClassItem;

    .local v2, obj:Lcom/android/server/sec/MWClassItem;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2           #obj:Lcom/android/server/sec/MWClassItem;
    :cond_0
    return-object v0
.end method

.method public getSubClassList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MWClassItem;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    return-object v0
.end method

.method public hasTaskItem(I)Z
    .locals 4
    .parameter "taskId"

    .prologue
    const/4 v2, 0x0

    .local v2, result:Z
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWPackageItem$taskItem;

    .local v1, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 v2, 0x1

    .end local v1           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_1
    return v2
.end method

.method public isFullScreen(I)Z
    .locals 6
    .parameter "taskId"

    .prologue
    const/4 v2, 0x1

    .local v2, result:Z
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWPackageItem$taskItem;

    .local v1, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v3

    if-ne p1, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetFullScreenLock()Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move-result-object v3

    sget-object v4, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    .end local v1           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_1
    :goto_0
    const-string v3, "MWPackageItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFullScreen : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .restart local v1       #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public procSubClassOrganize()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .local v0, Result:Z
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, iCnt:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MWClassItem;

    .local v3, sub:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v3           #sub:Lcom/android/server/sec/MWClassItem;
    :cond_1
    return v0
.end method

.method public removeEscaptedItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public removeInnerItem()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    return-void
.end method

.method public removeMWClassItem(Ljava/lang/String;I)Z
    .locals 7
    .parameter "sClassName"
    .parameter "taskId"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    const-string v4, "MWPackageItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[removeMWClassItem] sClassName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    const/4 v3, 0x0

    .local v3, obj:Lcom/android/server/sec/MWClassItem;
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #obj:Lcom/android/server/sec/MWClassItem;
    check-cast v3, Lcom/android/server/sec/MWClassItem;

    .restart local v3       #obj:Lcom/android/server/sec/MWClassItem;
    const-string v4, "MWPackageItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[removeMWClassItem] Remove Subobj ClassName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v4

    if-ne v4, p2, :cond_3

    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public removeMWClassItemAll()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeTaskAllItem()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeTaskItem(I)V
    .locals 4
    .parameter "taskId"

    .prologue
    const/4 v0, 0x0

    .local v0, delItem:Lcom/android/server/sec/MWPackageItem$taskItem;
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem$taskItem;

    .local v2, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v3

    if-ne v3, p1, :cond_0

    move-object v0, v2

    .end local v2           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "bmp"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public setEscapedItem(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "multiWindowFlag"
    .parameter "applicationRect"
    .parameter "restoreRect"

    .prologue
    const-string v0, "MWPackageItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setEscapedItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    if-nez v0, :cond_0

    const-string v0, "MWPackageItem"

    const-string v1, "mEscapedItem == null"

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/sec/MWPackageItem$taskItem;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/sec/MWPackageItem$taskItem;-><init>(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiSetFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    invoke-virtual {v0, p2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiSetMultiWindowRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    invoke-virtual {v0, p3}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiSetRestoreRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V
    .locals 7
    .parameter "taskId"
    .parameter "bLock"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MWPackageItem;->hasTaskItem(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    new-instance v3, Lcom/android/server/sec/MWPackageItem$taskItem;

    sget-object v4, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/android/server/sec/MWPackageItem$taskItem;-><init>(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWPackageItem$taskItem;

    .local v1, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v2

    if-ne p1, v2, :cond_1

    invoke-virtual {v1, p2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiSetFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .end local v1           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_2
    return-void
.end method

.method public setInnerItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sParentClassName"
    .parameter "sChildClassName"

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/sec/MWPackageItem$InnerItem;

    invoke-direct {v0, p1, p2}, Lcom/android/server/sec/MWPackageItem$InnerItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    :cond_0
    return-void
.end method

.method public setKeepRatio(Z)V
    .locals 0
    .parameter "value"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/sec/MWPackageItem;->mKeepRatio:Z

    return-void
.end method

.method public setLastResumedTaskID(I)V
    .locals 0
    .parameter "taskId"

    .prologue
    iput p1, p0, Lcom/android/server/sec/MWPackageItem;->mListResumedTaskID:I

    return-void
.end method

.method public setMinimumPoint(Landroid/graphics/Point;)Z
    .locals 3
    .parameter "point"

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mMinimPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public setMultiWindowRect(ILandroid/graphics/Rect;)V
    .locals 7
    .parameter "taskId"
    .parameter "r"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MWPackageItem;->hasTaskItem(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    new-instance v3, Lcom/android/server/sec/MWPackageItem$taskItem;

    sget-object v4, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/android/server/sec/MWPackageItem$taskItem;-><init>(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWPackageItem$taskItem;

    .local v1, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v2

    if-ne p1, v2, :cond_1

    invoke-virtual {v1, p2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiSetMultiWindowRect(Landroid/graphics/Rect;)V

    .end local v1           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_2
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/server/sec/MWPackageItem;->mPid:I

    return-void
.end method

.method public setRestoreRect(ILandroid/graphics/Rect;)V
    .locals 7
    .parameter "taskId"
    .parameter "rect"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MWPackageItem;->hasTaskItem(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    new-instance v3, Lcom/android/server/sec/MWPackageItem$taskItem;

    sget-object v4, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/android/server/sec/MWPackageItem$taskItem;-><init>(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWPackageItem$taskItem;

    .local v1, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v2

    if-ne p1, v2, :cond_1

    invoke-virtual {v1, p2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiSetRestoreRect(Landroid/graphics/Rect;)V

    .end local v1           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_2
    return-void
.end method

.method public setTaskItem(II)V
    .locals 10
    .parameter "oldtaskId"
    .parameter "newTask"

    .prologue
    const/4 v8, -0x1

    const-string v5, "MWPackageItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTaskItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, hasItem:Z
    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, cnt:I
    move v2, v0

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MWPackageItem$taskItem;

    .local v4, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v5

    if-ne v5, p1, :cond_3

    const-string v5, "MWPackageItem"

    const-string v6, "setTaskItem : condition2"

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, p2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiSetTaskId(I)V

    const/4 v1, 0x1

    .end local v4           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_0
    if-le p2, v8, :cond_4

    const-string v5, "MWPackageItem"

    const-string v6, "setTaskItem : condition1"

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MWPackageItem$taskItem;

    .restart local v4       #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v5

    if-ne v5, p2, :cond_1

    const-string v5, "MWPackageItem"

    const-string v6, "setTaskItem : condition1-1"

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Lcom/android/server/sec/MWPackageItem;->removeTaskItem(I)V

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_2
    :goto_1
    return-void

    .restart local v4       #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v4           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_4
    if-nez v1, :cond_2

    const-string v5, "MWPackageItem"

    const-string v6, "setTaskItem : condition3"

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    new-instance v6, Lcom/android/server/sec/MWPackageItem$taskItem;

    sget-object v7, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v6, p2, v7, v8, v9}, Lcom/android/server/sec/MWPackageItem$taskItem;-><init>(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public toObject()Landroid/sec/multiwindow/MultiWindowObject;
    .locals 6

    .prologue
    const-string v1, ""

    .local v1, sClassName:Ljava/lang/String;
    const/4 v3, -0x1

    .local v3, taskId:I
    invoke-virtual {p0}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v2

    .local v2, sub:Lcom/android/server/sec/MWClassItem;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v3

    :cond_0
    new-instance v0, Landroid/sec/multiwindow/MultiWindowObject;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Landroid/sec/multiwindow/MultiWindowObject;-><init>(Landroid/content/ComponentName;)V

    .local v0, Result:Landroid/sec/multiwindow/MultiWindowObject;
    invoke-virtual {p0, v3}, Lcom/android/server/sec/MWPackageItem;->getFullScreenLock(I)Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move-result-object v4

    sget-object v5, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    if-ne v4, v5, :cond_1

    sget-object v4, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->TRUE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    invoke-virtual {v0, v4}, Landroid/sec/multiwindow/MultiWindowObject;->setFullScreenLock(Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;)V

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/sec/multiwindow/MultiWindowObject;->setMultiWindowRect(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mFixedSizeList:Ljava/util/List;

    invoke-virtual {v0, v4}, Landroid/sec/multiwindow/MultiWindowObject;->setFixedSizeList(Ljava/util/List;)V

    return-object v0

    :cond_1
    sget-object v4, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->FALSE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    invoke-virtual {v0, v4}, Landroid/sec/multiwindow/MultiWindowObject;->setFullScreenLock(Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;)V

    goto :goto_0
.end method

.method public toObject(Landroid/content/ComponentName;I)Landroid/sec/multiwindow/MultiWindowObject;
    .locals 3
    .parameter "compName"
    .parameter "taskId"

    .prologue
    new-instance v0, Landroid/sec/multiwindow/MultiWindowObject;

    invoke-direct {v0, p1}, Landroid/sec/multiwindow/MultiWindowObject;-><init>(Landroid/content/ComponentName;)V

    .local v0, Result:Landroid/sec/multiwindow/MultiWindowObject;
    invoke-virtual {p0, p2}, Lcom/android/server/sec/MWPackageItem;->getFullScreenLock(I)Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move-result-object v1

    sget-object v2, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    if-ne v1, v2, :cond_0

    sget-object v1, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->TRUE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowObject;->setFullScreenLock(Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;)V

    :goto_0
    if-gez p2, :cond_1

    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowObject;->setMultiWindowRect(Landroid/graphics/Rect;)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mFixedSizeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowObject;->setFixedSizeList(Ljava/util/List;)V

    return-object v0

    :cond_0
    sget-object v1, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->FALSE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowObject;->setFullScreenLock(Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowObject;->setMultiWindowRect(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Min: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mMinimPoint:Landroid/graphics/Point;

    invoke-virtual {v3}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem$taskItem;

    .local v2, tItem:Lcom/android/server/sec/MWPackageItem$taskItem;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\t["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetFullScreenLock()Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v2           #tItem:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toSubString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "SubItem Size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWClassItem;

    .local v2, item:Lcom/android/server/sec/MWClassItem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #item:Lcom/android/server/sec/MWClassItem;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
