.class public Lcom/android/server/sec/SplitWindowModule;
.super Lcom/android/server/sec/MultiWindowModule;
.source "SplitWindowModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitWindowModule"

.field private static mInstance:Lcom/android/server/sec/SplitWindowModule;


# instance fields
.field public mCallerName:Landroid/content/ComponentName;

.field public mRemoveItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;",
            ">;"
        }
    .end annotation
.end field

.field public mReplaceName:Landroid/content/ComponentName;

.field public mReplaceTaskId:I

.field public mTargetName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    return-void
.end method

.method private constructor <init>(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)V
    .locals 2
    .parameter "mwt"
    .parameter "context"
    .parameter "handler"
    .parameter "wm"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/sec/MultiWindowModule;-><init>(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)V

    .line 28
    iput-object v1, p0, Lcom/android/server/sec/SplitWindowModule;->mReplaceName:Landroid/content/ComponentName;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/SplitWindowModule;->mReplaceTaskId:I

    .line 30
    iput-object v1, p0, Lcom/android/server/sec/SplitWindowModule;->mTargetName:Landroid/content/ComponentName;

    .line 31
    iput-object v1, p0, Lcom/android/server/sec/SplitWindowModule;->mCallerName:Landroid/content/ComponentName;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/SplitWindowModule;->mRemoveItem:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/android/server/sec/MultiWindowList;

    invoke-direct {v0}, Lcom/android/server/sec/MultiWindowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sec/SplitWindowModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/server/sec/SplitWindowModule;->changeMaximumRect()V

    return-void
.end method

.method private changeMaximumRect()V
    .locals 6

    .prologue
    .line 947
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 948
    .local v2, runningSize:I
    const-string v3, "SplitWindowModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeMaximumRect : runningSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 950
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MwActivityRecord;

    .line 952
    .local v1, mwRecord:Lcom/android/server/sec/MwActivityRecord;
    iget-object v3, v1, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v4, v1, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/sec/SplitWindowModule;->rePositionOfWindow(Landroid/content/ComponentName;IZ)Z

    .line 949
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 954
    .end local v1           #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)Lcom/android/server/sec/SplitWindowModule;
    .locals 1
    .parameter "mwt"
    .parameter "context"
    .parameter "handler"
    .parameter "wm"

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/server/sec/SplitWindowModule;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sec/SplitWindowModule;-><init>(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)V

    sput-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    .line 66
    :cond_0
    sget-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    return-object v0
.end method

.method public static removeInstance()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/SplitWindowModule;->finishAllWindow()Z

    .line 74
    sget-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowList;->clear()V

    .line 77
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    goto :goto_0
.end method

.method private resetVisibleItemForSplit(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1016
    .local p1, compList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mVisibleList:Ljava/util/List;

    monitor-enter v1

    .line 1017
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mVisibleList:Ljava/util/List;

    .line 1018
    monitor-exit v1

    .line 1019
    return-void

    .line 1018
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPositionOfWindow(Landroid/content/ComponentName;IZZ)Lcom/android/server/sec/MWPackageItem;
    .locals 7
    .parameter "className"
    .parameter "taskId"
    .parameter "isLeft"
    .parameter "checkMinSize"

    .prologue
    const/4 v6, 0x0

    .line 868
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 870
    .local v4, newRect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 871
    .local v0, display:Landroid/view/Display;
    invoke-super {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v3

    .line 872
    .local v3, max:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 873
    .local v2, iDeviceWidth:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 875
    .local v1, iDeviceHeight:I
    if-eqz p3, :cond_1

    .line 876
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    .line 877
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 878
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 879
    div-int/lit8 v5, v2, 0x2

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 880
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 901
    :goto_0
    invoke-virtual {p0, p1, p2, v4, p4}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;ILandroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    return-object v5

    .line 882
    :cond_0
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 883
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 884
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 885
    div-int/lit8 v5, v1, 0x2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 888
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    .line 889
    div-int/lit8 v5, v2, 0x2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 890
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 891
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 892
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 894
    :cond_2
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 895
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 896
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 897
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private setPositionOfWindow(Landroid/content/ComponentName;ZZ)Lcom/android/server/sec/MWPackageItem;
    .locals 7
    .parameter "className"
    .parameter "isLeft"
    .parameter "checkMinSize"

    .prologue
    const/4 v6, 0x0

    .line 824
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 826
    .local v4, newRect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 827
    .local v0, display:Landroid/view/Display;
    invoke-super {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v3

    .line 828
    .local v3, max:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 829
    .local v2, iDeviceWidth:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 831
    .local v1, iDeviceHeight:I
    if-eqz p2, :cond_1

    .line 832
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    .line 833
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 834
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 835
    div-int/lit8 v5, v2, 0x2

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 836
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 857
    :goto_0
    invoke-virtual {p0, p1, v4, p3}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    return-object v5

    .line 838
    :cond_0
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 839
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 840
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 841
    div-int/lit8 v5, v1, 0x2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 844
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    .line 845
    div-int/lit8 v5, v2, 0x2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 846
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 847
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 848
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 850
    :cond_2
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 851
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 852
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 853
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private setToHalf(Landroid/content/ComponentName;Z)V
    .locals 9
    .parameter "appName"
    .parameter "isLeft"

    .prologue
    const/4 v7, 0x0

    .line 612
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 613
    .local v0, display:Landroid/view/Display;
    invoke-super {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v4

    .line 614
    .local v4, maxRect:Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 615
    .local v2, iDeviceWidth:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 617
    .local v1, iDeviceHeight:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 619
    .local v5, rect:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_2

    .line 620
    if-eqz p2, :cond_1

    :goto_0
    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 621
    iget v7, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 622
    if-eqz p2, :cond_0

    div-int/lit8 v2, v2, 0x2

    .end local v2           #iDeviceWidth:I
    :cond_0
    iput v2, v5, Landroid/graphics/Rect;->right:I

    .line 623
    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 631
    .end local v1           #iDeviceHeight:I
    :goto_1
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 632
    .local v3, item:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v6

    .line 633
    .local v6, subObj:Lcom/android/server/sec/MWClassItem;
    if-eqz v6, :cond_5

    .line 634
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 638
    :goto_2
    return-void

    .line 620
    .end local v3           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v6           #subObj:Lcom/android/server/sec/MWClassItem;
    .restart local v1       #iDeviceHeight:I
    .restart local v2       #iDeviceWidth:I
    :cond_1
    div-int/lit8 v7, v2, 0x2

    goto :goto_0

    .line 625
    :cond_2
    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 626
    if-eqz p2, :cond_4

    iget v7, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    :goto_3
    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 627
    iput v2, v5, Landroid/graphics/Rect;->right:I

    .line 628
    if-eqz p2, :cond_3

    div-int/lit8 v1, v1, 0x2

    .end local v1           #iDeviceHeight:I
    :cond_3
    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 626
    .restart local v1       #iDeviceHeight:I
    :cond_4
    iget v7, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    div-int/lit8 v8, v1, 0x2

    add-int/2addr v7, v8

    goto :goto_3

    .line 636
    .end local v1           #iDeviceHeight:I
    .end local v2           #iDeviceWidth:I
    .restart local v3       #item:Lcom/android/server/sec/MWPackageItem;
    .restart local v6       #subObj:Lcom/android/server/sec/MWClassItem;
    :cond_5
    const-string v7, "SplitWindowModule"

    const-string v8, "setToHalf operation has failed : subObj=null"

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;Z)Z
    .locals 21
    .parameter "intentCaller"
    .parameter "intentCallee"
    .parameter "flgReplace"

    .prologue
    .line 699
    const/4 v4, 0x0

    .line 700
    .local v4, Result:Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 701
    :cond_0
    const-string v17, "SplitWindowModule"

    const-string v18, "invalid params !! [null value]"

    invoke-static/range {v17 .. v18}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v4

    .line 813
    :goto_0
    return v17

    .line 705
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/sec/SplitWindowModule;->isStartingSplitScreen(Landroid/content/ComponentName;)Z

    move-result v17

    if-eqz v17, :cond_2

    move/from16 v17, v4

    .line 706
    goto :goto_0

    .line 708
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/sec/SplitWindowModule;->getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v7

    .line 709
    .local v7, callerItem:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 711
    .local v8, callerName:Landroid/content/ComponentName;
    if-nez v7, :cond_3

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/sec/SplitWindowModule;->getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v7

    .line 713
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 715
    move-object/from16 v15, p1

    .line 716
    .local v15, tempIntent:Landroid/content/Intent;
    move-object/from16 p1, p2

    .line 717
    move-object/from16 p2, v15

    .line 720
    .end local v15           #tempIntent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v14

    .line 721
    .local v14, taskId:I
    if-eqz p3, :cond_5

    invoke-virtual {v7, v14}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v17

    if-nez v17, :cond_5

    .line 722
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/SplitWindowModule;->getVisibleWindowList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 723
    .local v10, com:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v13

    .line 724
    .local v13, mayCallerItem:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v13}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v14

    .line 725
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-virtual {v13, v14}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/SplitWindowModule;->getPackageNameOfCapture()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 727
    move-object v8, v10

    .line 728
    move-object v7, v13

    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x0

    goto/16 :goto_0

    .line 742
    .end local v10           #com:Landroid/content/ComponentName;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #mayCallerItem:Lcom/android/server/sec/MWPackageItem;
    :cond_5
    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v14

    .line 743
    invoke-virtual {v7, v14}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v9

    .line 745
    .local v9, callerRect:Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    const/4 v12, 0x1

    .line 746
    .local v12, isCallerLeft:Z
    :goto_1
    const-string v17, "SplitWindowModule"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isCallerLeft : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v6

    .line 750
    .local v6, calleeItem:Lcom/android/server/sec/MWPackageItem;
    if-nez v6, :cond_6

    .line 751
    const-string v17, "SplitWindowModule"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "startSplitScreensForLauncher : calleeItem Create - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/sec/MultiWindowList;->getNewItemInstance(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v6

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 754
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/server/sec/MultiWindowList;->addNewItem(Lcom/android/server/sec/MWPackageItem;)Z

    .line 755
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    :cond_6
    const-string v17, "SplitWindowModule"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Need to Run CalleeItem "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 763
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->add(Landroid/content/Intent;)Z

    .line 764
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/sec/MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sec/MWPackageItem;

    .line 767
    .local v5, allItem:Lcom/android/server/sec/MWPackageItem;
    const-string v17, "SplitWindowModule"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "allItem : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v14

    .line 769
    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    if-lez v14, :cond_9

    invoke-virtual {v5, v14}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v17

    if-nez v17, :cond_9

    if-eqz p3, :cond_8

    iget-object v0, v5, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/sec/SplitWindowModule;->isCaptureActivity(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 774
    :cond_8
    new-instance v17, Landroid/content/ComponentName;

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/sec/SplitWindowModule;->mReplaceName:Landroid/content/ComponentName;

    .line 775
    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemIndex(I)Lcom/android/server/sec/MWClassItem;

    move-result-object v17

    if-eqz v17, :cond_9

    .line 776
    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemIndex(I)Lcom/android/server/sec/MWClassItem;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/sec/SplitWindowModule;->mReplaceTaskId:I

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/SplitWindowModule;->mRemoveItem:Ljava/util/List;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/SplitWindowModule;->mReplaceName:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/SplitWindowModule;->mReplaceTaskId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;-><init>(Lcom/android/server/sec/SplitWindowModule;Landroid/content/ComponentName;I)V

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    const-string v17, "SplitWindowModule"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mReplaceName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/SplitWindowModule;->mReplaceName:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/SplitWindowModule;->mReplaceName:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem;->removeEscaptedItem()Z

    goto/16 :goto_2

    .line 745
    .end local v5           #allItem:Lcom/android/server/sec/MWPackageItem;
    .end local v6           #calleeItem:Lcom/android/server/sec/MWPackageItem;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #isCallerLeft:Z
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 755
    .restart local v6       #calleeItem:Lcom/android/server/sec/MWPackageItem;
    .restart local v12       #isCallerLeft:Z
    :catchall_0
    move-exception v17

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v17

    .line 764
    :catchall_1
    move-exception v17

    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v17

    .line 788
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v12, v1}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;ZZ)Lcom/android/server/sec/MWPackageItem;

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/sec/SplitWindowModule;->getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/sec/MultiWindowModule;->mLaunchedItem:Lcom/android/server/sec/MWPackageItem;

    .line 790
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/sec/MultiWindowModule;->mLaunchedTaskId:I

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mLaunchedItem:Lcom/android/server/sec/MWPackageItem;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mLaunchedItem:Lcom/android/server/sec/MWPackageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/sec/MultiWindowModule;->mLaunchedTaskId:I

    .line 793
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mLaunchedItem:Lcom/android/server/sec/MWPackageItem;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->mLaunchedTaskId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/sec/MultiWindowModule;->mLaunchedRect:Landroid/graphics/Rect;

    .line 795
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    if-nez v12, :cond_e

    const/16 v17, 0x1

    :goto_3
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;ZZ)Lcom/android/server/sec/MWPackageItem;

    .line 796
    sget-object v18, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    if-nez v12, :cond_f

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/sec/SplitWindowModule;->getPositionRect(Z)Landroid/graphics/Rect;

    move-result-object v17

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/sec/MWPackageItem;->setEscapedItem(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 800
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->size()I

    move-result v17

    if-lez v17, :cond_d

    .line 801
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/SplitWindowModule;->runNextMultiWindow()V

    .line 802
    :cond_d
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/sec/SplitWindowModule;->mTargetName:Landroid/content/ComponentName;

    .line 806
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/sec/SplitWindowModule;->mCallerName:Landroid/content/ComponentName;

    .line 808
    const/4 v4, 0x1

    .line 809
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v16, vList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/sec/SplitWindowModule;->resetVisibleItemForSplit(Ljava/util/List;)V

    move/from16 v17, v4

    .line 813
    goto/16 :goto_0

    .line 795
    .end local v16           #vList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 796
    :cond_f
    const/16 v17, 0x0

    goto :goto_4

    .line 802
    :catchall_2
    move-exception v17

    :try_start_5
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v17
.end method


# virtual methods
.method public exchangeSplitScreens()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 641
    const-string v7, "SplitWindowModule"

    const-string v10, "exchageSplitScreens"

    invoke-static {v7, v10}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 643
    .local v6, runningSize:I
    const/4 v4, 0x0

    .line 644
    .local v4, runningRecord1:Lcom/android/server/sec/MwActivityRecord;
    const/4 v5, 0x0

    .line 645
    .local v5, runningRecord2:Lcom/android/server/sec/MwActivityRecord;
    const/4 v0, 0x0

    .line 646
    .local v0, captureRecord:Lcom/android/server/sec/MwActivityRecord;
    const/4 v2, 0x0

    .line 647
    .local v2, isRunningLeft:Z
    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_3

    .line 648
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MwActivityRecord;

    .line 649
    .local v3, mwRecord:Lcom/android/server/sec/MwActivityRecord;
    iget-object v7, v3, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v10, v3, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {p0, v7, v10}, Lcom/android/server/sec/SplitWindowModule;->isMaximized(Landroid/content/ComponentName;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 650
    if-nez v4, :cond_1

    .line 651
    move-object v4, v3

    .line 652
    iget-object v7, v3, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v10, v3, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {p0, v7, v10}, Lcom/android/server/sec/SplitWindowModule;->isLeft(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 647
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 654
    :cond_1
    iget-object v7, v3, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v10, v3, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {p0, v7, v10}, Lcom/android/server/sec/SplitWindowModule;->isMaximized(Landroid/content/ComponentName;I)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v3, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v10, v4, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget v7, v3, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    iget v10, v4, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    if-eq v7, v10, :cond_0

    .line 655
    iget-object v7, v3, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v7}, Lcom/android/server/sec/SplitWindowModule;->isCaptureActivity(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v0, v3

    goto :goto_1

    .line 657
    :cond_2
    move-object v5, v3

    .line 666
    .end local v3           #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    :cond_3
    if-eqz v4, :cond_4

    if-nez v5, :cond_6

    .line 667
    :cond_4
    const-string v7, "SplitWindowModule"

    const-string v8, "runningRecord1 == null || runningRecord2 == null"

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 677
    :cond_5
    :goto_2
    return v8

    .line 672
    :cond_6
    iget-object v10, v4, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v11, v4, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    if-nez v2, :cond_7

    move v7, v8

    :goto_3
    invoke-direct {p0, v10, v11, v7, v9}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;IZZ)Lcom/android/server/sec/MWPackageItem;

    .line 673
    iget-object v7, v5, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v10, v5, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-direct {p0, v7, v10, v2, v9}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;IZZ)Lcom/android/server/sec/MWPackageItem;

    .line 674
    if-eqz v0, :cond_5

    iget-object v7, v0, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v10, v0, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-direct {p0, v7, v10, v2, v9}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;IZZ)Lcom/android/server/sec/MWPackageItem;

    goto :goto_2

    :cond_7
    move v7, v9

    .line 672
    goto :goto_3
.end method

.method protected finishOtherStateChanged(Landroid/content/ComponentName;)V
    .locals 14
    .parameter "className"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 465
    iget-object v11, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_1

    move v4, v9

    .line 476
    .local v4, isStartingSplitScreens:Z
    :goto_0
    const-string v11, "SplitWindowModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[finishOtherStateChanged] packageName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v11, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    .line 478
    .local v8, runningSize:I
    const/4 v6, 0x0

    .line 479
    .local v6, runningRecord1:Lcom/android/server/sec/MwActivityRecord;
    const/4 v7, 0x0

    .line 480
    .local v7, runningRecord2:Lcom/android/server/sec/MwActivityRecord;
    const/4 v0, 0x0

    .line 481
    .local v0, captureRecord:Lcom/android/server/sec/MwActivityRecord;
    const/4 v3, 0x0

    .line 482
    .local v3, isRunningLeft:Z
    add-int/lit8 v2, v8, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_4

    .line 483
    iget-object v11, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sec/MwActivityRecord;

    .line 484
    .local v5, mwRecord:Lcom/android/server/sec/MwActivityRecord;
    iget-object v11, v5, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v11}, Lcom/android/server/sec/SplitWindowModule;->isCaptureActivity(Landroid/content/ComponentName;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 485
    move-object v0, v5

    .line 482
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v0           #captureRecord:Lcom/android/server/sec/MwActivityRecord;
    .end local v2           #i:I
    .end local v3           #isRunningLeft:Z
    .end local v4           #isStartingSplitScreens:Z
    .end local v5           #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    .end local v6           #runningRecord1:Lcom/android/server/sec/MwActivityRecord;
    .end local v7           #runningRecord2:Lcom/android/server/sec/MwActivityRecord;
    .end local v8           #runningSize:I
    :cond_1
    move v4, v10

    .line 465
    goto :goto_0

    .line 487
    .restart local v0       #captureRecord:Lcom/android/server/sec/MwActivityRecord;
    .restart local v2       #i:I
    .restart local v3       #isRunningLeft:Z
    .restart local v4       #isStartingSplitScreens:Z
    .restart local v5       #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    .restart local v6       #runningRecord1:Lcom/android/server/sec/MwActivityRecord;
    .restart local v7       #runningRecord2:Lcom/android/server/sec/MwActivityRecord;
    .restart local v8       #runningSize:I
    :cond_2
    iget-object v11, v5, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v12, v5, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {p0, v11, v12}, Lcom/android/server/sec/SplitWindowModule;->isMaximized(Landroid/content/ComponentName;I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 488
    if-nez v6, :cond_3

    .line 489
    move-object v6, v5

    .line 490
    iget-object v11, v5, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v12, v5, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {p0, v11, v12}, Lcom/android/server/sec/SplitWindowModule;->isLeft(Landroid/content/ComponentName;I)Z

    move-result v3

    goto :goto_2

    .line 495
    :cond_3
    iget-object v11, v5, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v12, v5, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {p0, v11, v12}, Lcom/android/server/sec/SplitWindowModule;->isMaximized(Landroid/content/ComponentName;I)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, v5, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v6, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    iget v11, v5, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    iget v12, v6, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    if-eq v11, v12, :cond_0

    .line 496
    move-object v7, v5

    .line 504
    .end local v5           #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    :cond_4
    if-eqz v6, :cond_5

    .line 505
    if-eqz v4, :cond_8

    iget-object v11, v6, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v12, v6, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {p0, v11, v12}, Lcom/android/server/sec/SplitWindowModule;->isMaximized(Landroid/content/ComponentName;I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 506
    if-eqz v7, :cond_5

    iget-object v11, v7, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v12, v7, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {p0, v11, v12}, Lcom/android/server/sec/SplitWindowModule;->isMaximized(Landroid/content/ComponentName;I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 507
    iget-object v11, v7, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v12, v7, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    if-nez v3, :cond_7

    :goto_3
    invoke-direct {p0, v11, v12, v9, v10}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;IZZ)Lcom/android/server/sec/MWPackageItem;

    .line 519
    :cond_5
    :goto_4
    :try_start_0
    iget-object v9, p0, Lcom/android/server/sec/SplitWindowModule;->mRemoveItem:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 520
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    new-instance v10, Lcom/android/server/sec/SplitWindowModule$2;

    invoke-direct {v10, p0}, Lcom/android/server/sec/SplitWindowModule$2;-><init>(Lcom/android/server/sec/SplitWindowModule;)V

    const-wide/16 v11, 0x1f4

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/sec/MultiWindowActionHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :cond_6
    :goto_5
    return-void

    :cond_7
    move v9, v10

    .line 507
    goto :goto_3

    .line 510
    :cond_8
    if-nez v7, :cond_5

    .line 511
    iget-object v9, v6, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v10, v6, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {p0, v9, v10}, Lcom/android/server/sec/SplitWindowModule;->setToMax(Landroid/content/ComponentName;I)Z

    .line 512
    if-eqz v0, :cond_5

    .line 513
    iget-object v9, v0, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v10, v0, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {p0, v9, v10}, Lcom/android/server/sec/SplitWindowModule;->finish(Landroid/content/ComponentName;I)Z

    goto :goto_4

    .line 537
    :catch_0
    move-exception v1

    .line 538
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v9, "SplitWindowModule"

    const-string v10, "Already deleted"

    invoke-static {v9, v10}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;
    .locals 2
    .parameter "className"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 548
    invoke-virtual {p0, p1}, Lcom/android/server/sec/SplitWindowModule;->setToMax(Landroid/content/ComponentName;)Z

    .line 551
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    return-object v0
.end method

.method protected getPositionRect(Z)Landroid/graphics/Rect;
    .locals 7
    .parameter "isLeft"

    .prologue
    const/4 v6, 0x0

    .line 905
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 907
    .local v4, resultRect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 908
    .local v0, display:Landroid/view/Display;
    invoke-super {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v3

    .line 909
    .local v3, max:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 910
    .local v2, iDeviceWidth:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 912
    .local v1, iDeviceHeight:I
    if-eqz p1, :cond_1

    .line 913
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    .line 914
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 915
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 916
    div-int/lit8 v5, v2, 0x2

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 917
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 938
    :goto_0
    return-object v4

    .line 919
    :cond_0
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 920
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 921
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 922
    div-int/lit8 v5, v1, 0x2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 925
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    .line 926
    div-int/lit8 v5, v2, 0x2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 927
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 928
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 929
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 931
    :cond_2
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 932
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 933
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 934
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public isStartingSplitScreen(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "compName"

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/android/server/sec/SplitWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 229
    .local v0, pItem:Lcom/android/server/sec/MWPackageItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->getEscapedItem()Lcom/android/server/sec/MWPackageItem$taskItem;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public notifySIP(I)Z
    .locals 4
    .parameter "height"

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, Result:Z
    const-string v1, "SplitWindowModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySIP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/sec/SplitWindowModule;->getRunningWindowList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 86
    :cond_0
    const/4 p1, 0x0

    .line 88
    :cond_1
    iget v1, p0, Lcom/android/server/sec/MultiWindowModule;->sipHeight:I

    if-eq v1, p1, :cond_2

    .line 89
    iput p1, p0, Lcom/android/server/sec/MultiWindowModule;->sipHeight:I

    .line 91
    iget v1, p0, Lcom/android/server/sec/MultiWindowModule;->sipHeight:I

    if-nez v1, :cond_3

    .line 92
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/sec/SplitWindowModule$1;

    invoke-direct {v2, p0}, Lcom/android/server/sec/SplitWindowModule$1;-><init>(Lcom/android/server/sec/SplitWindowModule;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 113
    :cond_2
    :goto_0
    return v0

    .line 109
    :cond_3
    invoke-direct {p0}, Lcom/android/server/sec/SplitWindowModule;->changeMaximumRect()V

    goto :goto_0
.end method

.method public postResume(Landroid/content/ComponentName;I)Z
    .locals 7
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 583
    const/4 v0, 0x0

    .line 585
    .local v0, Result:Z
    invoke-super {p0, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->postResume(Landroid/content/ComponentName;I)Z

    .line 596
    iget-object v4, p0, Lcom/android/server/sec/SplitWindowModule;->mTargetName:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/sec/SplitWindowModule;->mTargetName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 597
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v1, cloneRemoveItem:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;>;"
    iget-object v4, p0, Lcom/android/server/sec/SplitWindowModule;->mRemoveItem:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 599
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;

    .line 600
    .local v3, mwKey:Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;
    invoke-virtual {v3}, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;->getTaskId()I

    move-result v4

    if-eq p2, v4, :cond_0

    .line 601
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;->getTaskId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/sec/SplitWindowModule;->finish(Landroid/content/ComponentName;IZ)Z

    move-result v0

    goto :goto_0

    .line 603
    .end local v3           #mwKey:Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 604
    iget-object v4, p0, Lcom/android/server/sec/SplitWindowModule;->mRemoveItem:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 608
    .end local v1           #cloneRemoveItem:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    return v0
.end method

.method protected rePositionOfWindow(Landroid/content/ComponentName;IZ)Z
    .locals 24
    .parameter "cName"
    .parameter "taskId"
    .parameter "needResume"

    .prologue
    .line 359
    const/4 v4, 0x1

    .line 361
    .local v4, Result:Z
    const-string v20, "SplitWindowModule"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "rePositionOfWindow with task: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getRotation()I

    move-result v16

    .line 363
    .local v16, orient:I
    rem-int/lit8 v20, v16, 0x2

    if-nez v20, :cond_1

    const/4 v11, 0x1

    .line 364
    .local v11, isLandscape:Z
    :goto_0
    const-string v20, "SplitWindowModule"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isLandscape : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/SplitWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v14

    .line 366
    .local v14, maxRect:Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 367
    .local v9, iDeviceWidth:I
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 369
    .local v8, iDeviceHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/SplitWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v10

    .line 371
    .local v10, imwList:Lcom/android/server/sec/IMultiWindowList;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v13

    .line 373
    .local v13, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v13, :cond_2

    .line 374
    const/4 v4, 0x0

    .line 456
    .end local v4           #Result:Z
    :cond_0
    :goto_1
    return v4

    .line 363
    .end local v8           #iDeviceHeight:I
    .end local v9           #iDeviceWidth:I
    .end local v10           #imwList:Lcom/android/server/sec/IMultiWindowList;
    .end local v11           #isLandscape:Z
    .end local v13           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v14           #maxRect:Landroid/graphics/Rect;
    .restart local v4       #Result:Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 376
    .restart local v8       #iDeviceHeight:I
    .restart local v9       #iDeviceWidth:I
    .restart local v10       #imwList:Lcom/android/server/sec/IMultiWindowList;
    .restart local v11       #isLandscape:Z
    .restart local v13       #item:Lcom/android/server/sec/MWPackageItem;
    .restart local v14       #maxRect:Landroid/graphics/Rect;
    :cond_2
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 378
    .local v17, rect:Landroid/graphics/Rect;
    invoke-virtual {v13}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v5

    .line 380
    .local v5, cn:Landroid/content/ComponentName;
    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 382
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Lcom/android/server/sec/SplitWindowModule;->setToMax(Landroid/content/ComponentName;I)Z

    .line 384
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 385
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 386
    move-object/from16 v0, v17

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 387
    move-object/from16 v0, v17

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 389
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;ILandroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v18

    .line 390
    .local v18, resultItem:Lcom/android/server/sec/MWPackageItem;
    if-nez v18, :cond_3

    .line 391
    const/4 v4, 0x0

    goto :goto_1

    .line 393
    :cond_3
    if-eqz p3, :cond_0

    .line 394
    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast(Landroid/content/ComponentName;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v15

    .line 395
    .local v15, obj:Lcom/android/server/sec/MWClassItem;
    if-eqz v15, :cond_0

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    new-instance v22, Landroid/sec/multiwindow/PreventSplitItem;

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/sec/SplitWindowModule;->getPreventSplit(Landroid/content/ComponentName;I)Z

    move-result v23

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/sec/multiwindow/PreventSplitItem;-><init>(Landroid/graphics/Rect;Z)V

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/sec/multiwindow/PreventSplitItem;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/MultiWindowActionHandler;->actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 403
    .end local v15           #obj:Lcom/android/server/sec/MWClassItem;
    .end local v18           #resultItem:Lcom/android/server/sec/MWPackageItem;
    :cond_4
    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v6

    .line 404
    .local v6, currentRect:Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    if-gtz v20, :cond_8

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 405
    const-string v20, "SplitWindowModule"

    const-string v21, "isLeft : true "

    invoke-static/range {v20 .. v21}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    if-eqz v11, :cond_7

    .line 407
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 408
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 409
    div-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 410
    move-object/from16 v0, v17

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 432
    :goto_2
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;ILandroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v18

    .line 436
    .restart local v18       #resultItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v18, :cond_0

    .line 437
    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v19

    .line 438
    .local v19, resultRect:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast(Landroid/content/ComponentName;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v15

    .line 439
    .restart local v15       #obj:Lcom/android/server/sec/MWClassItem;
    if-eqz v15, :cond_0

    .line 440
    if-eqz p3, :cond_5

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    new-instance v22, Landroid/sec/multiwindow/PreventSplitItem;

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/sec/SplitWindowModule;->getPreventSplit(Landroid/content/ComponentName;I)Z

    move-result v23

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/sec/multiwindow/PreventSplitItem;-><init>(Landroid/graphics/Rect;Z)V

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/sec/multiwindow/PreventSplitItem;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/MultiWindowActionHandler;->actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    .line 445
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/sec/MWPackageItem;->getSubClassList()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/sec/MWClassItem;

    .line 446
    .local v12, it:Lcom/android/server/sec/MWClassItem;
    if-eq v12, v15, :cond_6

    invoke-virtual {v15}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v20

    invoke-virtual {v12}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v12}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    new-instance v22, Landroid/sec/multiwindow/PreventSplitItem;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/sec/multiwindow/PreventSplitItem;-><init>(Landroid/graphics/Rect;Z)V

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/sec/multiwindow/PreventSplitItem;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v12}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v12}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/MultiWindowActionHandler;->actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    goto :goto_3

    .line 412
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v12           #it:Lcom/android/server/sec/MWClassItem;
    .end local v15           #obj:Lcom/android/server/sec/MWClassItem;
    .end local v18           #resultItem:Lcom/android/server/sec/MWPackageItem;
    .end local v19           #resultRect:Landroid/graphics/Rect;
    :cond_7
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 414
    move-object/from16 v0, v17

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 415
    div-int/lit8 v20, v8, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 418
    :cond_8
    const-string v20, "SplitWindowModule"

    const-string v21, "isLeft : false"

    invoke-static/range {v20 .. v21}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-eqz v11, :cond_9

    .line 420
    div-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 421
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 422
    move-object/from16 v0, v17

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 423
    move-object/from16 v0, v17

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 425
    :cond_9
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 426
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v20, v0

    div-int/lit8 v21, v8, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 427
    move-object/from16 v0, v17

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 428
    move-object/from16 v0, v17

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2
.end method

.method protected rePositionOfWindow(Landroid/content/ComponentName;Z)Z
    .locals 24
    .parameter "cName"
    .parameter "needResume"

    .prologue
    .line 249
    const/4 v3, 0x1

    .line 251
    .local v3, Result:Z
    const-string v20, "SplitWindowModule"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "rePositionOfWindow : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getRotation()I

    move-result v15

    .line 253
    .local v15, orient:I
    rem-int/lit8 v20, v15, 0x2

    if-nez v20, :cond_1

    const/4 v10, 0x1

    .line 254
    .local v10, isLandscape:Z
    :goto_0
    const-string v20, "SplitWindowModule"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isLandscape : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "    orient : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/SplitWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v13

    .line 256
    .local v13, maxRect:Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 257
    .local v8, iDeviceWidth:I
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 259
    .local v7, iDeviceHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/SplitWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v9

    .line 261
    .local v9, imwList:Lcom/android/server/sec/IMultiWindowList;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v12

    .line 262
    .local v12, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v12, :cond_2

    .line 263
    const/4 v3, 0x0

    .line 350
    .end local v3           #Result:Z
    :cond_0
    :goto_1
    return v3

    .line 253
    .end local v7           #iDeviceHeight:I
    .end local v8           #iDeviceWidth:I
    .end local v9           #imwList:Lcom/android/server/sec/IMultiWindowList;
    .end local v10           #isLandscape:Z
    .end local v12           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v13           #maxRect:Landroid/graphics/Rect;
    .restart local v3       #Result:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 266
    .restart local v7       #iDeviceHeight:I
    .restart local v8       #iDeviceWidth:I
    .restart local v9       #imwList:Lcom/android/server/sec/IMultiWindowList;
    .restart local v10       #isLandscape:Z
    .restart local v12       #item:Lcom/android/server/sec/MWPackageItem;
    .restart local v13       #maxRect:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v12}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v19

    .line 267
    .local v19, taskId:I
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 269
    .local v16, rect:Landroid/graphics/Rect;
    invoke-virtual {v12}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v4

    .line 271
    .local v4, cn:Landroid/content/ComponentName;
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 273
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/sec/SplitWindowModule;->setToMax(Landroid/content/ComponentName;)Z

    .line 275
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 276
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 277
    move-object/from16 v0, v16

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 278
    move-object/from16 v0, v16

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 280
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v17

    .line 281
    .local v17, resultItem:Lcom/android/server/sec/MWPackageItem;
    if-nez v17, :cond_3

    .line 282
    const/4 v3, 0x0

    goto :goto_1

    .line 284
    :cond_3
    if-eqz p2, :cond_0

    .line 285
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast(Landroid/content/ComponentName;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v14

    .line 286
    .local v14, obj:Lcom/android/server/sec/MWClassItem;
    if-eqz v14, :cond_0

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v14}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    new-instance v22, Landroid/sec/multiwindow/PreventSplitItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/SplitWindowModule;->getPreventSplit(Landroid/content/ComponentName;I)Z

    move-result v23

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/sec/multiwindow/PreventSplitItem;-><init>(Landroid/graphics/Rect;Z)V

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/sec/multiwindow/PreventSplitItem;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v14}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v14}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/MultiWindowActionHandler;->actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 294
    .end local v14           #obj:Lcom/android/server/sec/MWClassItem;
    .end local v17           #resultItem:Lcom/android/server/sec/MWPackageItem;
    :cond_4
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 295
    .local v5, currentRect:Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    if-gtz v20, :cond_6

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 296
    const-string v20, "SplitWindowModule"

    const-string v21, "isLeft : true "

    invoke-static/range {v20 .. v21}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-eqz v10, :cond_5

    .line 298
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 300
    div-int/lit8 v20, v8, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 301
    move-object/from16 v0, v16

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 323
    :goto_2
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v17

    .line 324
    .restart local v17       #resultItem:Lcom/android/server/sec/MWPackageItem;
    if-nez v17, :cond_8

    .line 325
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 303
    .end local v17           #resultItem:Lcom/android/server/sec/MWPackageItem;
    :cond_5
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 304
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 305
    move-object/from16 v0, v16

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 306
    div-int/lit8 v20, v7, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 309
    :cond_6
    const-string v20, "SplitWindowModule"

    const-string v21, "isLeft : false"

    invoke-static/range {v20 .. v21}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-eqz v10, :cond_7

    .line 311
    div-int/lit8 v20, v8, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 313
    move-object/from16 v0, v16

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 314
    move-object/from16 v0, v16

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 316
    :cond_7
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v20, v0

    div-int/lit8 v21, v7, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 318
    move-object/from16 v0, v16

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 319
    move-object/from16 v0, v16

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 330
    .restart local v17       #resultItem:Lcom/android/server/sec/MWPackageItem;
    :cond_8
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v18

    .line 331
    .local v18, resultRect:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast(Landroid/content/ComponentName;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v14

    .line 332
    .restart local v14       #obj:Lcom/android/server/sec/MWClassItem;
    if-eqz v14, :cond_0

    .line 333
    if-eqz p2, :cond_9

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v14}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    new-instance v22, Landroid/sec/multiwindow/PreventSplitItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/SplitWindowModule;->getPreventSplit(Landroid/content/ComponentName;I)Z

    move-result v23

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/sec/multiwindow/PreventSplitItem;-><init>(Landroid/graphics/Rect;Z)V

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/sec/multiwindow/PreventSplitItem;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v14}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v14}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/MultiWindowActionHandler;->actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    .line 339
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/sec/MWPackageItem;->getSubClassList()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/sec/MWClassItem;

    .line 340
    .local v11, it:Lcom/android/server/sec/MWClassItem;
    if-eq v11, v14, :cond_a

    invoke-virtual {v14}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v20

    invoke-virtual {v11}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v11}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    new-instance v22, Landroid/sec/multiwindow/PreventSplitItem;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/sec/multiwindow/PreventSplitItem;-><init>(Landroid/graphics/Rect;Z)V

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/sec/multiwindow/PreventSplitItem;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v11}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v20, v0

    invoke-virtual {v11}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/MultiWindowActionHandler;->actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method public restore(Landroid/content/ComponentName;)Z
    .locals 8
    .parameter "className"

    .prologue
    .line 965
    const/4 v0, 0x0

    .line 967
    .local v0, Result:Z
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 968
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 992
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 971
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v5

    .line 972
    .local v5, taskId:I
    invoke-virtual {v2, v5}, Lcom/android/server/sec/MWPackageItem;->getRestoreRect(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 974
    .local v4, restoreRect:Landroid/graphics/Rect;
    invoke-virtual {v2, v5}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v0

    .line 975
    .restart local v1       #Result:I
    goto :goto_0

    .line 987
    .end local v1           #Result:I
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 988
    .local v3, mwItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v3, :cond_2

    .line 989
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 992
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public restore(Landroid/content/ComponentName;I)Z
    .locals 8
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 997
    const/4 v0, 0x0

    .line 998
    .local v0, Result:Z
    const-string v5, "SplitWindowModule"

    const-string v6, "restore"

    const-string v7, ""

    invoke-static {v5, v6, p1, v7}, Landroid/sec/multiwindow/MWlog;->s(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)I

    .line 999
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 1000
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 1012
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1003
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {v2, p2}, Lcom/android/server/sec/MWPackageItem;->getRestoreRect(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 1005
    .local v4, restoreRect:Landroid/graphics/Rect;
    invoke-virtual {v2, p2}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v0

    .line 1006
    .restart local v1       #Result:I
    goto :goto_0

    .line 1008
    .end local v1           #Result:I
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 1009
    .local v3, mwItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v3, :cond_2

    .line 1010
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 1012
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public setEscapedList(Lcom/android/server/sec/MwActivityRecord;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    iget-object v2, p1, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 236
    .local v0, item:Lcom/android/server/sec/MWPackageItem;
    const-string v1, "SplitWindowModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEscapedList task : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", component : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-eqz v0, :cond_0

    .line 238
    iget v1, p1, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/sec/MWPackageItem;->getFullScreenLock(I)Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move-result-object v1

    iget v2, p1, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {v0, v2}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p1, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {v0, v3}, Lcom/android/server/sec/MWPackageItem;->getRestoreRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sec/MWPackageItem;->setEscapedItem(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 239
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_0
    return-void
.end method

.method public startMultiWindow(Landroid/content/ComponentName;IZ)Z
    .locals 12
    .parameter "className"
    .parameter "taskId"
    .parameter "isMiniMode"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 168
    const/4 v0, 0x1

    .line 170
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, packageName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v6, v5}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    .line 172
    .local v4, obj:Lcom/android/server/sec/MWPackageItem;
    const-string v9, "SplitWindowModule"

    const-string v10, "startMultiWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " obj != null : "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v4, :cond_2

    move v6, v7

    :goto_0
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ", isRunning = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/android/server/sec/SplitWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v10, p1, v6}, Landroid/sec/multiwindow/MWlog;->s(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)I

    .line 173
    if-eqz v4, :cond_1

    .line 176
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 177
    const-string v6, "SplitWindowModule"

    const-string v9, "startMultiWindow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mEscapedList.containsKey("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v9, p1, v10}, Landroid/sec/multiwindow/MWlog;->s(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)I

    .line 178
    move v1, p2

    .line 179
    .local v1, excapeTaskId:I
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem;->getEscapedItem()Lcom/android/server/sec/MWPackageItem$taskItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetFullScreenLock()Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 180
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem;->getEscapedItem()Lcom/android/server/sec/MWPackageItem$taskItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/android/server/sec/MWPackageItem;->setMultiWindowRect(ILandroid/graphics/Rect;)V

    .line 181
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem;->getEscapedItem()Lcom/android/server/sec/MWPackageItem$taskItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetRestoreRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/android/server/sec/MWPackageItem;->setRestoreRect(ILandroid/graphics/Rect;)V

    .line 184
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem;->removeEscaptedItem()Z

    .line 185
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowModule;->mLaunchedItem:Lcom/android/server/sec/MWPackageItem;

    if-eqz v6, :cond_0

    .line 187
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowModule;->mLaunchedItem:Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/server/sec/MultiWindowModule;->mLaunchedTaskId:I

    if-eq p2, v6, :cond_0

    .line 189
    iget v6, p0, Lcom/android/server/sec/MultiWindowModule;->mLaunchedTaskId:I

    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mLaunchedRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v6, v9, v8}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;ILandroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    .line 190
    iget v6, p0, Lcom/android/server/sec/MultiWindowModule;->mLaunchedTaskId:I

    sget-object v8, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v4, v6, v8}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 218
    .end local v1           #excapeTaskId:I
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    iput-object v6, p0, Lcom/android/server/sec/MultiWindowModule;->mBeforeRunningList:Ljava/util/List;

    .line 222
    invoke-virtual {p0, p1, p2, v7}, Lcom/android/server/sec/SplitWindowModule;->rePositionOfWindow(Landroid/content/ComponentName;IZ)Z

    .line 225
    :cond_1
    return v0

    :cond_2
    move v6, v8

    .line 172
    goto/16 :goto_0

    .line 193
    :cond_3
    const-string v6, "com.diotek.screen_capture"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 194
    const-string v6, "SplitWindowModule"

    const-string v8, "screenCapture Start"

    invoke-static {v6, v8}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 195
    :cond_4
    if-eqz p3, :cond_5

    .line 196
    const-string v6, "SplitWindowModule"

    const-string v8, "start MiniMode"

    invoke-static {v6, v8}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sec/SplitWindowModule;->restore(Landroid/content/ComponentName;I)Z

    goto :goto_1

    .line 202
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/sec/SplitWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v3

    .line 203
    .local v3, isRunn:Z
    invoke-virtual {v4, p2}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v6

    if-nez v6, :cond_6

    move v2, v7

    .line 206
    .local v2, isNotFull:Z
    :goto_2
    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .line 207
    const-string v6, "SplitWindowModule"

    const-string v8, "start RestoreRect"

    invoke-static {v6, v8}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sec/SplitWindowModule;->restore(Landroid/content/ComponentName;I)Z

    goto :goto_1

    .end local v2           #isNotFull:Z
    :cond_6
    move v2, v8

    .line 203
    goto :goto_2

    .line 211
    .restart local v2       #isNotFull:Z
    :cond_7
    const-string v6, "SplitWindowModule"

    const-string v8, "start FullScreen"

    invoke-static {v6, v8}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sec/SplitWindowModule;->setToMax(Landroid/content/ComponentName;I)Z

    goto :goto_1
.end method

.method public startMultiWindow(Landroid/content/ComponentName;Z)Z
    .locals 12
    .parameter "className"
    .parameter "isMiniMode"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 118
    const/4 v0, 0x1

    .line 120
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, packageName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v7, v5}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    .line 122
    .local v4, obj:Lcom/android/server/sec/MWPackageItem;
    const-string v10, "SplitWindowModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startMultiWindow : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " obj != null : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v4, :cond_1

    move v7, v8

    :goto_0
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", isRunning = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/android/server/sec/SplitWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eqz v4, :cond_0

    .line 124
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem;->getEscapedItem()Lcom/android/server/sec/MWPackageItem$taskItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v6

    .line 126
    .local v6, taskId:I
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 127
    const-string v7, "SplitWindowModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mEscapedList.containsKey("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem;->getEscapedItem()Lcom/android/server/sec/MWPackageItem$taskItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetTaskId()I

    move-result v1

    .line 130
    .local v1, excapeTaskId:I
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem;->getEscapedItem()Lcom/android/server/sec/MWPackageItem$taskItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetFullScreenLock()Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 131
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem;->getEscapedItem()Lcom/android/server/sec/MWPackageItem$taskItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Lcom/android/server/sec/MWPackageItem;->setMultiWindowRect(ILandroid/graphics/Rect;)V

    .line 132
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem;->getEscapedItem()Lcom/android/server/sec/MWPackageItem$taskItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetRestoreRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Lcom/android/server/sec/MWPackageItem;->setRestoreRect(ILandroid/graphics/Rect;)V

    .line 135
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v1           #excapeTaskId:I
    :goto_1
    invoke-virtual {p0, p1, v9}, Lcom/android/server/sec/SplitWindowModule;->rePositionOfWindow(Landroid/content/ComponentName;Z)Z

    .line 164
    .end local v6           #taskId:I
    :cond_0
    return v0

    :cond_1
    move v7, v9

    .line 122
    goto/16 :goto_0

    .line 137
    .restart local v6       #taskId:I
    :cond_2
    const-string v7, "com.diotek.screen_capture"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 138
    const-string v7, "SplitWindowModule"

    const-string v8, "screenCapture Start"

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 139
    :cond_3
    if-eqz p2, :cond_4

    .line 140
    const-string v7, "SplitWindowModule"

    const-string v8, "start MiniMode"

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v7, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/sec/SplitWindowModule;->restore(Landroid/content/ComponentName;)Z

    goto :goto_1

    .line 144
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/sec/SplitWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v3

    .line 145
    .local v3, isRunn:Z
    invoke-virtual {v4, v6}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v7

    if-nez v7, :cond_5

    move v2, v8

    .line 146
    .local v2, isNotFull:Z
    :goto_2
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 147
    const-string v7, "SplitWindowModule"

    const-string v8, "start RestoreRect"

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v7, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/sec/SplitWindowModule;->restore(Landroid/content/ComponentName;)Z

    goto :goto_1

    .end local v2           #isNotFull:Z
    :cond_5
    move v2, v9

    .line 145
    goto :goto_2

    .line 151
    .restart local v2       #isNotFull:Z
    :cond_6
    const-string v7, "SplitWindowModule"

    const-string v8, "start FullScreen"

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v7, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/server/sec/SplitWindowModule;->maximize(Landroid/content/ComponentName;)Z

    goto :goto_1
.end method

.method public startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 1
    .parameter "intentCaller"
    .parameter "intentCallee"

    .prologue
    .line 692
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sec/SplitWindowModule;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;Z)Z

    move-result v0

    return v0
.end method

.method public startSplitScreensForLauncher(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 1
    .parameter "intentCaller"
    .parameter "intentCallee"

    .prologue
    const/4 v0, 0x1

    .line 684
    iput-boolean v0, p0, Lcom/android/server/sec/MultiWindowModule;->mStartingLauncher:Z

    .line 685
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sec/SplitWindowModule;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;Z)Z

    move-result v0

    return v0
.end method
