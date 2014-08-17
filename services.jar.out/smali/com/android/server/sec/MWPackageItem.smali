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
    .line 193
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/sec/MWPackageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "appClass"
    .parameter "appPackage"

    .prologue
    .line 202
    sget-object v0, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sec/MWPackageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V
    .locals 1
    .parameter "appClass"
    .parameter "appPackage"
    .parameter "bLock"

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/sec/MWPackageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;Ljava/util/List;)V

    .line 216
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

    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v2, "MWPackageItem"

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->TAG:Ljava/lang/String;

    .line 54
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    .line 928
    iput v6, p0, Lcom/android/server/sec/MWPackageItem;->mListResumedTaskID:I

    .line 219
    iput-object p2, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    .line 226
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    new-instance v3, Lcom/android/server/sec/MWPackageItem$taskItem;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v3, v6, p3, v4, v5}, Lcom/android/server/sec/MWPackageItem$taskItem;-><init>(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    .line 229
    iput-object v7, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    .line 230
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/sec/MWPackageItem;->mKeepRatio:Z

    .line 231
    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x190

    const/16 v4, 0xfa

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mMinimPoint:Landroid/graphics/Point;

    .line 232
    iput-object v7, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 233
    iput v6, p0, Lcom/android/server/sec/MWPackageItem;->mPid:I

    .line 234
    iput-object p4, p0, Lcom/android/server/sec/MWPackageItem;->mFixedSizeList:Ljava/util/List;

    .line 235
    invoke-virtual {p0, p1, v6}, Lcom/android/server/sec/MWPackageItem;->addSubClassObject(Ljava/lang/String;I)Z

    .line 238
    invoke-static {}, Lcom/android/server/sec/MultiWindowDataList;->getInstance()Lcom/android/server/sec/MultiWindowDataList;

    move-result-object v0

    .line 239
    .local v0, instance:Lcom/android/server/sec/MultiWindowDataList;
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p2}, Lcom/android/server/sec/MultiWindowDataList;->getDataItem(Ljava/lang/String;)Lcom/android/server/sec/MultiWindowDataItem;

    move-result-object v1

    .line 241
    .local v1, item:Lcom/android/server/sec/MultiWindowDataItem;
    if-eqz v1, :cond_0

    .line 242
    iget-boolean v2, v1, Lcom/android/server/sec/MultiWindowDataItem;->isFixedRatio:Z

    iput-boolean v2, p0, Lcom/android/server/sec/MWPackageItem;->mKeepRatio:Z

    .line 243
    iget-object v2, v1, Lcom/android/server/sec/MultiWindowDataItem;->mFixedSizeList:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mFixedSizeList:Ljava/util/List;

    .line 244
    iget v2, v1, Lcom/android/server/sec/MultiWindowDataItem;->minWidth:I

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/sec/MultiWindowDataItem;->minHeight:I

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mMinimPoint:Landroid/graphics/Point;

    iget v3, v1, Lcom/android/server/sec/MultiWindowDataItem;->minWidth:I

    iget v4, v1, Lcom/android/server/sec/MultiWindowDataItem;->minHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 249
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
    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, Result:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    :cond_0
    move v1, v0

    .line 522
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 510
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

    .line 512
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItem(Ljava/lang/String;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v2

    .line 514
    .local v2, obj:Lcom/android/server/sec/MWClassItem;
    if-nez v2, :cond_2

    .line 515
    new-instance v2, Lcom/android/server/sec/MWClassItem;

    .end local v2           #obj:Lcom/android/server/sec/MWClassItem;
    invoke-direct {v2, p1, p2}, Lcom/android/server/sec/MWClassItem;-><init>(Ljava/lang/String;I)V

    .line 516
    .restart local v2       #obj:Lcom/android/server/sec/MWClassItem;
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 517
    const/4 v3, -0x1

    invoke-virtual {p0, v3, p2}, Lcom/android/server/sec/MWPackageItem;->setTaskItem(II)V

    :goto_1
    move v1, v0

    .line 522
    .restart local v1       #Result:I
    goto :goto_0

    .line 519
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
    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, Result:Z
    invoke-virtual {p0, p1, p3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItem(Ljava/lang/String;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v1

    .line 536
    .local v1, obj:Lcom/android/server/sec/MWClassItem;
    if-nez v1, :cond_0

    .line 537
    new-instance v1, Lcom/android/server/sec/MWClassItem;

    .end local v1           #obj:Lcom/android/server/sec/MWClassItem;
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/sec/MWClassItem;-><init>(Ljava/lang/String;Landroid/sec/multiwindow/IMultiWindowAction;I)V

    .line 538
    .restart local v1       #obj:Lcom/android/server/sec/MWClassItem;
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 539
    const/4 v2, -0x1

    invoke-virtual {p0, v2, p3}, Lcom/android/server/sec/MWPackageItem;->setTaskItem(II)V

    .line 546
    :goto_0
    return v0

    .line 541
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v2

    invoke-virtual {p0, v2, p3}, Lcom/android/server/sec/MWPackageItem;->setTaskItem(II)V

    .line 542
    invoke-virtual {v1, p2, p3}, Lcom/android/server/sec/MWClassItem;->setMultiWindowAction(Landroid/sec/multiwindow/IMultiWindowAction;I)V

    .line 543
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public assigned(Lcom/android/server/sec/MWPackageItem;)V
    .locals 3
    .parameter "src"

    .prologue
    .line 257
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

    .line 258
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

    .line 260
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sec/MWPackageItem;->setMultiWindowRect(ILandroid/graphics/Rect;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 262
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    iget-object v1, p1, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    .line 264
    iget-object v0, p1, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    iput-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    .line 265
    iget-boolean v0, p1, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    iput-boolean v0, p0, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    .line 266
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/sec/MWPackageItem;->getRestoreRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sec/MWPackageItem;->setRestoreRect(ILandroid/graphics/Rect;)V

    .line 267
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getKeepRatio()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MWPackageItem;->setKeepRatio(Z)V

    .line 268
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getMinimumPoint()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MWPackageItem;->setMinimumPoint(Landroid/graphics/Point;)Z

    .line 269
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MWPackageItem;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 270
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getPid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MWPackageItem;->setPid(I)V

    .line 271
    return-void
.end method

.method public findSubClassObject(Ljava/lang/String;)Z
    .locals 4
    .parameter "sClassName"

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
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

    .line 475
    .local v2, item:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    const/4 v0, 0x1

    .line 480
    .end local v2           #item:Lcom/android/server/sec/MWClassItem;
    :cond_1
    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getComponentNameOfSubClass(Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 4
    .parameter "sClassName"
    .parameter "taskId"

    .prologue
    .line 489
    const/4 v0, 0x0

    .line 491
    .local v0, Result:Landroid/content/ComponentName;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItem(Ljava/lang/String;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v2

    .line 492
    .local v2, data:Lcom/android/server/sec/MWClassItem;
    if-nez v2, :cond_0

    move-object v1, v0

    .line 497
    .end local v0           #Result:Landroid/content/ComponentName;
    .local v1, Result:Landroid/content/ComponentName;
    :goto_0
    return-object v1

    .line 495
    .end local v1           #Result:Landroid/content/ComponentName;
    .restart local v0       #Result:Landroid/content/ComponentName;
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #Result:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #Result:Landroid/content/ComponentName;
    move-object v1, v0

    .line 497
    .end local v0           #Result:Landroid/content/ComponentName;
    .restart local v1       #Result:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public getEscapedItem()Lcom/android/server/sec/MWPackageItem$taskItem;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    return-object v0
.end method

.method public getFullScreenLock(I)Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;
    .locals 4
    .parameter "taskId"

    .prologue
    .line 292
    sget-object v2, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    .line 293
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

    .line 294
    .local v1, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 295
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetFullScreenLock()Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move-result-object v2

    .line 300
    .end local v1           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_1
    return-object v2
.end method

.method public getInnerItem()Lcom/android/server/sec/MWPackageItem$InnerItem;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    return-object v0
.end method

.method public getKeepRatio()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/server/sec/MWPackageItem;->mKeepRatio:Z

    return v0
.end method

.method public getLastResumedTaskID()I
    .locals 3

    .prologue
    .line 933
    iget v0, p0, Lcom/android/server/sec/MWPackageItem;->mListResumedTaskID:I

    .line 935
    .local v0, result:I
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 938
    :cond_0
    :goto_0
    return v0

    .line 936
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
    .line 570
    const/4 v0, 0x0

    .line 572
    .local v0, Result:Lcom/android/server/sec/MWClassItem;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 584
    .end local v0           #Result:Lcom/android/server/sec/MWClassItem;
    .local v1, Result:Lcom/android/server/sec/MWClassItem;
    :goto_0
    return-object v1

    .line 574
    .end local v1           #Result:Lcom/android/server/sec/MWClassItem;
    .restart local v0       #Result:Lcom/android/server/sec/MWClassItem;
    :cond_0
    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 575
    .local v2, cnt:I
    move v3, v2

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_2

    .line 576
    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MWClassItem;

    .line 577
    .local v4, obj:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 578
    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 579
    :cond_1
    move-object v0, v4

    .end local v4           #obj:Lcom/android/server/sec/MWClassItem;
    :cond_2
    move-object v1, v0

    .line 584
    .end local v0           #Result:Lcom/android/server/sec/MWClassItem;
    .restart local v1       #Result:Lcom/android/server/sec/MWClassItem;
    goto :goto_0

    .line 575
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
    .line 448
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMWClassItemCount(I)I
    .locals 5
    .parameter "taskId"

    .prologue
    .line 457
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 458
    .local v2, len:I
    const/4 v3, 0x0

    .line 459
    .local v3, resultCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 460
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sec/MWClassItem;

    .line 461
    .local v0, cItem:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v0}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v4

    if-ne v4, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 459
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    .end local v0           #cItem:Lcom/android/server/sec/MWClassItem;
    :cond_1
    return v3
.end method

.method public getMWClassItemFirstName()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 681
    const-string v0, ""

    .line 682
    .local v0, sClassName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 683
    .local v1, size:I
    if-lez v1, :cond_0

    .line 684
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWClassItem;

    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 687
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
    .line 557
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWClassItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    return-object v1

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMWClassItemLast()Lcom/android/server/sec/MWClassItem;
    .locals 3

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 630
    .local v0, size:I
    if-lez v0, :cond_0

    .line 631
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWClassItem;

    .line 634
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
    .line 642
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
    .line 645
    const/4 v2, 0x0

    .line 646
    .local v2, result:Lcom/android/server/sec/MWClassItem;
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 647
    .local v3, size:I
    if-lez v3, :cond_2

    .line 648
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 649
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sec/MWClassItem;

    .line 650
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

    .line 651
    if-eqz p3, :cond_1

    invoke-static {p1, v1}, Lcom/android/server/sec/MultiWindowModule$CheckTaskItem;->isItemCheck(Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 648
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 652
    :cond_1
    move-object v2, v0

    .line 653
    if-eqz p3, :cond_2

    invoke-static {p1, v1}, Lcom/android/server/sec/MultiWindowModule$CheckTaskItem;->setItemIndex(Landroid/content/ComponentName;I)V

    .line 659
    .end local v0           #cItem:Lcom/android/server/sec/MWClassItem;
    .end local v1           #i:I
    :cond_2
    return-object v2
.end method

.method public getMWClassItemLastName()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 667
    const-string v0, ""

    .line 668
    .local v0, sClassName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 669
    .local v1, size:I
    if-lez v1, :cond_0

    .line 670
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWClassItem;

    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 673
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
    .line 405
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mMinimPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMultiWindowRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v3

    .line 335
    .local v3, taskId:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 336
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

    .line 337
    .local v2, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 338
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 342
    .end local v2           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_1
    return-object v0
.end method

.method public getMultiWindowRect(I)Landroid/graphics/Rect;
    .locals 4
    .parameter "taskId"

    .prologue
    .line 322
    if-gez p1, :cond_1

    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    iget-object v0, v3, Lcom/android/server/sec/MWPackageItem$taskItem;->mApplicationRect:Landroid/graphics/Rect;

    .line 330
    :cond_0
    :goto_0
    return-object v0

    .line 323
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 324
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

    .line 325
    .local v2, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 326
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 327
    goto :goto_0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPid()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/android/server/sec/MWPackageItem;->mPid:I

    return v0
.end method

.method public getRestoreRect(I)Landroid/graphics/Rect;
    .locals 4
    .parameter "taskId"

    .prologue
    .line 371
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 372
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

    .line 373
    .local v1, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 374
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetRestoreRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 378
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
    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 612
    .local v3, iCnt:I
    const/4 v4, 0x0

    .line 613
    .local v4, obj:Lcom/android/server/sec/MWClassItem;
    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 614
    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #obj:Lcom/android/server/sec/MWClassItem;
    check-cast v4, Lcom/android/server/sec/MWClassItem;

    .line 615
    .restart local v4       #obj:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v1

    .line 616
    .local v1, action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v1, :cond_0

    .line 617
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 621
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
    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 736
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

    .line 737
    .local v2, obj:Lcom/android/server/sec/MWClassItem;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 740
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
    .line 440
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    return-object v0
.end method

.method public hasTaskItem(I)Z
    .locals 4
    .parameter "taskId"

    .prologue
    .line 835
    const/4 v2, 0x0

    .line 836
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

    .line 837
    .local v1, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 838
    const/4 v2, 0x1

    .line 842
    .end local v1           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_1
    return v2
.end method

.method public isFullScreen(I)Z
    .locals 6
    .parameter "taskId"

    .prologue
    .line 358
    const/4 v2, 0x1

    .line 360
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

    .line 361
    .local v1, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 362
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetFullScreenLock()Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move-result-object v3

    sget-object v4, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    .line 366
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

    .line 367
    return v2

    .line 362
    .restart local v1       #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public procSubClassOrganize()Z
    .locals 5

    .prologue
    .line 591
    const/4 v0, 0x1

    .line 593
    .local v0, Result:Z
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 594
    .local v2, iCnt:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 595
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MWClassItem;

    .line 596
    .local v3, sub:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v4

    if-nez v4, :cond_0

    .line 597
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 594
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 601
    .end local v3           #sub:Lcom/android/server/sec/MWClassItem;
    :cond_1
    return v0
.end method

.method public removeEscaptedItem()Z
    .locals 2

    .prologue
    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    if-eqz v1, :cond_0

    .line 779
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    .line 780
    const/4 v0, 0x1

    .line 782
    :cond_0
    return v0
.end method

.method public removeInnerItem()V
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    .line 755
    return-void
.end method

.method public removeMWClassItem(Ljava/lang/String;I)Z
    .locals 7
    .parameter "sClassName"
    .parameter "taskId"

    .prologue
    .line 702
    const/4 v0, 0x0

    .line 704
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

    .line 709
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 710
    :cond_0
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move v1, v0

    .line 726
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 714
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    const/4 v3, 0x0

    .line 716
    .local v3, obj:Lcom/android/server/sec/MWClassItem;
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 717
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #obj:Lcom/android/server/sec/MWClassItem;
    check-cast v3, Lcom/android/server/sec/MWClassItem;

    .line 718
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

    .line 719
    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v4

    if-ne v4, p2, :cond_3

    .line 720
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 721
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 726
    .restart local v1       #Result:I
    goto :goto_0

    .line 716
    .end local v1           #Result:I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public removeMWClassItemAll()V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 695
    return-void
.end method

.method public removeTaskAllItem()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 832
    return-void
.end method

.method public removeTaskItem(I)V
    .locals 4
    .parameter "taskId"

    .prologue
    .line 818
    const/4 v0, 0x0

    .line 819
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

    .line 820
    .local v2, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 821
    move-object v0, v2

    .line 826
    .end local v2           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_1
    if-eqz v0, :cond_2

    .line 827
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 828
    :cond_2
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "bmp"

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, Result:Z
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 416
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 419
    :cond_0
    if-eqz p1, :cond_1

    .line 420
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 421
    const/4 v0, 0x1

    .line 424
    :cond_1
    return v0
.end method

.method public setEscapedItem(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "multiWindowFlag"
    .parameter "applicationRect"
    .parameter "restoreRect"

    .prologue
    .line 759
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

    .line 760
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    if-nez v0, :cond_0

    .line 761
    const-string v0, "MWPackageItem"

    const-string v1, "mEscapedItem == null"

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v0, Lcom/android/server/sec/MWPackageItem$taskItem;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/sec/MWPackageItem$taskItem;-><init>(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    .line 770
    :goto_0
    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiSetFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 765
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    invoke-virtual {v0, p2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiSetMultiWindowRect(Landroid/graphics/Rect;)V

    .line 766
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    invoke-virtual {v0, p3}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiSetRestoreRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V
    .locals 7
    .parameter "taskId"
    .parameter "bLock"

    .prologue
    .line 278
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

    .line 279
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

    .line 280
    .local v1, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 281
    invoke-virtual {v1, p2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiSetFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 285
    .end local v1           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_2
    return-void
.end method

.method public setInnerItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sParentClassName"
    .parameter "sChildClassName"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    if-nez v0, :cond_0

    .line 750
    new-instance v0, Lcom/android/server/sec/MWPackageItem$InnerItem;

    invoke-direct {v0, p1, p2}, Lcom/android/server/sec/MWPackageItem$InnerItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    .line 751
    :cond_0
    return-void
.end method

.method public setKeepRatio(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 392
    iput-boolean p1, p0, Lcom/android/server/sec/MWPackageItem;->mKeepRatio:Z

    .line 393
    return-void
.end method

.method public setLastResumedTaskID(I)V
    .locals 0
    .parameter "taskId"

    .prologue
    .line 930
    iput p1, p0, Lcom/android/server/sec/MWPackageItem;->mListResumedTaskID:I

    .line 931
    return-void
.end method

.method public setMinimumPoint(Landroid/graphics/Point;)Z
    .locals 3
    .parameter "point"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mMinimPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 401
    const/4 v0, 0x1

    return v0
.end method

.method public setMultiWindowRect(ILandroid/graphics/Rect;)V
    .locals 7
    .parameter "taskId"
    .parameter "r"

    .prologue
    .line 308
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

    .line 309
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

    .line 310
    .local v1, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 311
    invoke-virtual {v1, p2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiSetMultiWindowRect(Landroid/graphics/Rect;)V

    .line 315
    .end local v1           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_2
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 432
    iput p1, p0, Lcom/android/server/sec/MWPackageItem;->mPid:I

    .line 433
    return-void
.end method

.method public setRestoreRect(ILandroid/graphics/Rect;)V
    .locals 7
    .parameter "taskId"
    .parameter "rect"

    .prologue
    .line 382
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

    .line 383
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

    .line 384
    .local v1, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 385
    invoke-virtual {v1, p2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiSetRestoreRect(Landroid/graphics/Rect;)V

    .line 389
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

    .line 786
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

    .line 787
    const/4 v1, 0x0

    .line 789
    .local v1, hasItem:Z
    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 790
    .local v0, cnt:I
    move v2, v0

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 791
    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MWPackageItem$taskItem;

    .line 792
    .local v4, item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 793
    const-string v5, "MWPackageItem"

    const-string v6, "setTaskItem : condition2"

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual {v4, p2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiSetTaskId(I)V

    .line 795
    const/4 v1, 0x1

    .line 799
    .end local v4           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_0
    if-le p2, v8, :cond_4

    .line 800
    const-string v5, "MWPackageItem"

    const-string v6, "setTaskItem : condition1"

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
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

    .line 802
    .restart local v4       #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v5

    if-ne v5, p2, :cond_1

    .line 803
    const-string v5, "MWPackageItem"

    const-string v6, "setTaskItem : condition1-1"

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-virtual {p0, v8}, Lcom/android/server/sec/MWPackageItem;->removeTaskItem(I)V

    .line 815
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_2
    :goto_1
    return-void

    .line 790
    .restart local v4       #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 810
    .end local v4           #item:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_4
    if-nez v1, :cond_2

    .line 811
    const-string v5, "MWPackageItem"

    const-string v6, "setTaskItem : condition3"

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
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
    .line 882
    const-string v1, ""

    .line 883
    .local v1, sClassName:Ljava/lang/String;
    const/4 v3, -0x1

    .line 884
    .local v3, taskId:I
    invoke-virtual {p0}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v2

    .line 885
    .local v2, sub:Lcom/android/server/sec/MWClassItem;
    if-eqz v2, :cond_0

    .line 886
    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 887
    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v3

    .line 891
    :cond_0
    new-instance v0, Landroid/sec/multiwindow/MultiWindowObject;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Landroid/sec/multiwindow/MultiWindowObject;-><init>(Landroid/content/ComponentName;)V

    .line 893
    .local v0, Result:Landroid/sec/multiwindow/MultiWindowObject;
    invoke-virtual {p0, v3}, Lcom/android/server/sec/MWPackageItem;->getFullScreenLock(I)Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move-result-object v4

    sget-object v5, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    if-ne v4, v5, :cond_1

    .line 894
    sget-object v4, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->TRUE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    invoke-virtual {v0, v4}, Landroid/sec/multiwindow/MultiWindowObject;->setFullScreenLock(Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;)V

    .line 899
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/sec/multiwindow/MultiWindowObject;->setMultiWindowRect(Landroid/graphics/Rect;)V

    .line 901
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mFixedSizeList:Ljava/util/List;

    invoke-virtual {v0, v4}, Landroid/sec/multiwindow/MultiWindowObject;->setFixedSizeList(Ljava/util/List;)V

    .line 902
    return-object v0

    .line 896
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
    .line 907
    new-instance v0, Landroid/sec/multiwindow/MultiWindowObject;

    invoke-direct {v0, p1}, Landroid/sec/multiwindow/MultiWindowObject;-><init>(Landroid/content/ComponentName;)V

    .line 909
    .local v0, Result:Landroid/sec/multiwindow/MultiWindowObject;
    invoke-virtual {p0, p2}, Lcom/android/server/sec/MWPackageItem;->getFullScreenLock(I)Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move-result-object v1

    sget-object v2, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    if-ne v1, v2, :cond_0

    .line 910
    sget-object v1, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->TRUE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowObject;->setFullScreenLock(Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;)V

    .line 914
    :goto_0
    if-gez p2, :cond_1

    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    if-eqz v1, :cond_1

    .line 915
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mEscapedItem:Lcom/android/server/sec/MWPackageItem$taskItem;

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowObject;->setMultiWindowRect(Landroid/graphics/Rect;)V

    .line 921
    :goto_1
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mFixedSizeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowObject;->setFixedSizeList(Ljava/util/List;)V

    .line 922
    return-object v0

    .line 912
    :cond_0
    sget-object v1, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->FALSE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowObject;->setFullScreenLock(Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;)V

    goto :goto_0

    .line 917
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/MultiWindowObject;->setMultiWindowRect(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 851
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    const-string v3, ", Min: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mMinimPoint:Landroid/graphics/Point;

    invoke-virtual {v3}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
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

    .line 855
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

    .line 856
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

    .line 857
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 863
    .end local v2           #tItem:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toSubString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 867
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 868
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "SubItem Size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 870
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    const/4 v0, 0x0

    .line 872
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

    .line 873
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

    .line 874
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 878
    .end local v2           #item:Lcom/android/server/sec/MWClassItem;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
