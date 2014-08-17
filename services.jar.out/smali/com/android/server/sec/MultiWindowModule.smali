.class public Lcom/android/server/sec/MultiWindowModule;
.super Ljava/lang/Object;
.source "MultiWindowModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/MultiWindowModule$CheckTaskItem;,
        Lcom/android/server/sec/MultiWindowModule$RunAppList;,
        Lcom/android/server/sec/MultiWindowModule$TimerFinish;,
        Lcom/android/server/sec/MultiWindowModule$TimerRun;,
        Lcom/android/server/sec/MultiWindowModule$ResumeItem;
    }
.end annotation


# static fields
.field private static final PADDING_TILED:I = 0x32

.field private static final TAG:Ljava/lang/String; = "MultiWindowModule"

.field private static final TYPE_CASCADE:I = 0x0

.field private static final TYPE_TILED:I = 0x1


# instance fields
.field protected accelerometerRotation:I

.field protected mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

.field protected mActivityManager:Landroid/app/ActivityManager;

.field protected mAppList:Lcom/android/server/sec/MultiWindowList;

.field protected mBeforeRunningList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MwActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mEscapedList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/sec/MWPackageItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mFinalDestinationRect:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mLastPermissionLockCallLocation:Ljava/lang/RuntimeException;

.field protected mLaunchedItem:Lcom/android/server/sec/MWPackageItem;

.field protected mLaunchedRect:Landroid/graphics/Rect;

.field protected mLaunchedTaskId:I

.field protected mMultiWindowType:Landroid/sec/multiwindow/MultiWindowType;

.field mPermissionCheck:Z

.field private mPermissionLockCount:I

.field private mPermissionLockObject:Ljava/lang/Object;

.field protected mPinupItem:Lcom/android/server/sec/MWPackageItem;

.field protected mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

.field protected mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

.field protected mRunningList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MwActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mStartingLauncher:Z

.field protected mVisibleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field protected mWindowManager:Landroid/view/WindowManager;

.field private pausedItemWhenLocked:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MWPackageItem;",
            ">;"
        }
    .end annotation
.end field

.field protected sipHeight:I

.field protected statusBarHeight:I

.field protected userRotation:I


# direct methods
.method public constructor <init>(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)V
    .locals 4
    .parameter "mwt"
    .parameter "context"
    .parameter "handler"
    .parameter "wm"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    .line 64
    iput-boolean v2, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionCheck:Z

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionLockObject:Ljava/lang/Object;

    .line 67
    iput v2, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionLockCount:I

    .line 69
    iput-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mLastPermissionLockCallLocation:Ljava/lang/RuntimeException;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    .line 100
    new-instance v0, Lcom/android/server/sec/MultiWindowModule$RunAppList;

    invoke-direct {v0}, Lcom/android/server/sec/MultiWindowModule$RunAppList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    .line 105
    iput-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    .line 110
    iput-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    .line 121
    iput v2, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    .line 123
    iput v3, p0, Lcom/android/server/sec/MultiWindowModule;->accelerometerRotation:I

    .line 125
    iput v3, p0, Lcom/android/server/sec/MultiWindowModule;->userRotation:I

    .line 127
    iput v2, p0, Lcom/android/server/sec/MultiWindowModule;->sipHeight:I

    .line 129
    iput v3, p0, Lcom/android/server/sec/MultiWindowModule;->mLaunchedTaskId:I

    .line 131
    iput-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mLaunchedItem:Lcom/android/server/sec/MWPackageItem;

    .line 133
    iput-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mLaunchedRect:Landroid/graphics/Rect;

    .line 137
    iput-boolean v2, p0, Lcom/android/server/sec/MultiWindowModule;->mStartingLauncher:Z

    .line 928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->pausedItemWhenLocked:Ljava/util/List;

    .line 2491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mVisibleList:Ljava/util/List;

    .line 2492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    .line 2493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mBeforeRunningList:Ljava/util/List;

    .line 149
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowModule;->mMultiWindowType:Landroid/sec/multiwindow/MultiWindowType;

    .line 150
    iput-object p2, p0, Lcom/android/server/sec/MultiWindowModule;->mContext:Landroid/content/Context;

    .line 151
    iput-object p3, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    .line 152
    iput-object p4, p0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    .line 153
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mActivityManager:Landroid/app/ActivityManager;

    .line 154
    return-void
.end method

.method private finishByForced(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "componentName"

    .prologue
    .line 1995
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 1996
    .local v1, pkgItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v1, :cond_1

    .line 1997
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v0

    .line 1998
    .local v0, classItem:Lcom/android/server/sec/MWClassItem;
    if-eqz v0, :cond_0

    .line 1999
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v0}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/sec/MultiWindowActionHandler;->actionForceClosed(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 2006
    .end local v0           #classItem:Lcom/android/server/sec/MWClassItem;
    :goto_0
    return-void

    .line 2001
    .restart local v0       #classItem:Lcom/android/server/sec/MWClassItem;
    :cond_0
    const-string v2, "MultiWindowModule"

    const-string v3, "finishByForced >>>>> classItem is null"

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2004
    .end local v0           #classItem:Lcom/android/server/sec/MWClassItem;
    :cond_1
    const-string v2, "MultiWindowModule"

    const-string v3, "finishByForced >>>>> pkgItem is null"

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .parameter "value"

    .prologue
    .line 1200
    packed-switch p1, :pswitch_data_0

    .line 1208
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1202
    :pswitch_0
    const/high16 v0, 0x4387

    goto :goto_0

    .line 1204
    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    .line 1206
    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 1200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resetRunningList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MwActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2468
    .local p1, mwList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MwActivityRecord;>;"
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    monitor-enter v1

    .line 2469
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    .line 2470
    monitor-exit v1

    .line 2471
    return-void

    .line 2470
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public arrangeWindows(I)Z
    .locals 23
    .parameter "type"

    .prologue
    .line 1777
    const/4 v4, 0x0

    .line 1779
    .local v4, Result:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v16

    .line 1780
    .local v16, maxRect:Landroid/graphics/Rect;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1781
    .local v10, iDeviceWidth:I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 1783
    .local v9, iDeviceHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v11

    .line 1784
    .local v11, imwList:Lcom/android/server/sec/IMultiWindowList;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/MultiWindowModule;->getRunningWindowList()Ljava/util/List;

    move-result-object v18

    .line 1785
    .local v18, runningList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v11}, Lcom/android/server/sec/IMultiWindowList;->size()I

    move-result v19

    .line 1787
    .local v19, runningSize:I
    packed-switch p1, :pswitch_data_0

    .line 1857
    :goto_0
    return v4

    .line 1793
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/server/sec/MultiWindowList;->mFocusedIndex:I

    .line 1796
    .local v7, focusedIndex:I
    const/4 v14, 0x0

    .line 1797
    .local v14, j:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    move/from16 v0, v19

    if-ge v8, v0, :cond_1

    .line 1798
    if-ne v7, v8, :cond_0

    .line 1797
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1800
    :cond_0
    add-int/lit8 v21, v14, 0x1

    mul-int/lit8 v15, v21, 0x32

    .line 1801
    .local v15, left:I
    add-int/lit8 v21, v14, 0x1

    mul-int/lit8 v20, v21, 0x32

    .line 1802
    .local v20, top:I
    add-int/lit8 v14, v14, 0x1

    .line 1804
    new-instance v17, Landroid/graphics/Rect;

    div-int/lit8 v21, v10, 0x2

    add-int v21, v21, v15

    div-int/lit8 v22, v9, 0x2

    add-int v22, v22, v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v15, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1806
    .local v17, rect:Landroid/graphics/Rect;
    invoke-interface {v11, v8}, Lcom/android/server/sec/IMultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v5

    .line 1809
    .local v5, cn:Landroid/content/ComponentName;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    goto :goto_2

    .line 1814
    .end local v5           #cn:Landroid/content/ComponentName;
    .end local v15           #left:I
    .end local v17           #rect:Landroid/graphics/Rect;
    .end local v20           #top:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v13

    .line 1815
    .local v13, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v13, :cond_2

    .line 1816
    add-int/lit8 v21, v14, 0x1

    mul-int/lit8 v15, v21, 0x32

    .line 1817
    .restart local v15       #left:I
    add-int/lit8 v21, v14, 0x1

    mul-int/lit8 v20, v21, 0x32

    .line 1818
    .restart local v20       #top:I
    new-instance v17, Landroid/graphics/Rect;

    div-int/lit8 v21, v10, 0x2

    add-int v21, v21, v15

    div-int/lit8 v22, v9, 0x2

    add-int v22, v22, v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v15, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1819
    .restart local v17       #rect:Landroid/graphics/Rect;
    invoke-virtual {v13}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v5

    .line 1820
    .restart local v5       #cn:Landroid/content/ComponentName;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    .line 1823
    .end local v5           #cn:Landroid/content/ComponentName;
    .end local v15           #left:I
    .end local v17           #rect:Landroid/graphics/Rect;
    .end local v20           #top:I
    :cond_2
    const/4 v4, 0x1

    .line 1824
    goto/16 :goto_0

    .line 1827
    .end local v7           #focusedIndex:I
    .end local v8           #i:I
    .end local v13           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v14           #j:I
    :pswitch_1
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 1829
    .restart local v17       #rect:Landroid/graphics/Rect;
    const/4 v15, 0x0

    .line 1830
    .restart local v15       #left:I
    const/16 v20, 0x0

    .line 1831
    .restart local v20       #top:I
    add-int/lit8 v12, v19, -0x1

    .line 1832
    .local v12, index:I
    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 1833
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    .line 1834
    invoke-interface {v11, v12}, Lcom/android/server/sec/IMultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v6

    .line 1835
    .local v6, componentName:Landroid/content/ComponentName;
    div-int/lit8 v21, v10, 0x2

    mul-int v15, v21, v8

    .line 1836
    div-int/lit8 v21, v10, 0x2

    add-int v21, v21, v15

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v15, v1, v2, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1837
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    .line 1839
    add-int/lit8 v12, v12, -0x1

    .line 1833
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1842
    .end local v6           #componentName:Landroid/content/ComponentName;
    .end local v8           #i:I
    :cond_3
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_4
    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    .line 1843
    invoke-interface {v11, v12}, Lcom/android/server/sec/IMultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v6

    .line 1844
    .restart local v6       #componentName:Landroid/content/ComponentName;
    div-int/lit8 v21, v10, 0x2

    rem-int/lit8 v22, v8, 0x2

    mul-int v15, v21, v22

    .line 1845
    div-int/lit8 v21, v9, 0x2

    rem-int/lit8 v22, v8, 0x4

    div-int/lit8 v22, v22, 0x2

    mul-int v20, v21, v22

    .line 1846
    div-int/lit8 v21, v10, 0x2

    add-int v21, v21, v15

    div-int/lit8 v22, v9, 0x2

    add-int v22, v22, v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1847
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    .line 1849
    add-int/lit8 v12, v12, -0x1

    .line 1842
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1853
    .end local v6           #componentName:Landroid/content/ComponentName;
    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1787
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callEnsureActivity()V
    .locals 2

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    new-instance v1, Lcom/android/server/sec/MultiWindowModule$3;

    invoke-direct {v1, p0}, Lcom/android/server/sec/MultiWindowModule$3;-><init>(Lcom/android/server/sec/MultiWindowModule;)V

    invoke-virtual {v0, v1}, Lcom/android/server/sec/MultiWindowActionHandler;->post(Ljava/lang/Runnable;)Z

    .line 2636
    return-void
.end method

.method public changVisibleFocusMultiWindow(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/sec/MultiWindowList;->changedFocus(ILjava/lang/String;)V

    .line 1101
    return-void
.end method

.method public changeLockScreenStatus(Z)Z
    .locals 11
    .parameter "isLock"

    .prologue
    .line 930
    if-eqz p1, :cond_2

    .line 931
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->pausedItemWhenLocked:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->pausedItemWhenLocked:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 933
    :cond_0
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v8}, Lcom/android/server/sec/MultiWindowList;->getVisibleItem()Ljava/util/List;

    move-result-object v7

    .line 935
    .local v7, vi:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MWPackageItem;>;"
    const/4 v5, -0x1

    .line 936
    .local v5, taskId:I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MWPackageItem;

    .line 937
    .local v4, mayPausedItem:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v5

    .line 938
    invoke-virtual {v4, v5}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 939
    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/android/server/sec/MultiWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 942
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v3

    .line 943
    .local v3, last:Lcom/android/server/sec/MWClassItem;
    if-eqz v3, :cond_1

    .line 944
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)Z

    .line 945
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->pausedItemWhenLocked:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 951
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #last:Lcom/android/server/sec/MWClassItem;
    .end local v4           #mayPausedItem:Lcom/android/server/sec/MWPackageItem;
    .end local v5           #taskId:I
    .end local v7           #vi:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MWPackageItem;>;"
    :cond_2
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->pausedItemWhenLocked:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem;

    .line 952
    .local v2, itemPaused:Lcom/android/server/sec/MWPackageItem;
    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/android/server/sec/MultiWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 955
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v3

    .line 956
    .restart local v3       #last:Lcom/android/server/sec/MWClassItem;
    if-eqz v3, :cond_3

    .line 957
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)Z

    goto :goto_1

    .line 960
    .end local v2           #itemPaused:Lcom/android/server/sec/MWPackageItem;
    .end local v3           #last:Lcom/android/server/sec/MWClassItem;
    :cond_4
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->pausedItemWhenLocked:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 963
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 964
    .local v0, acActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 965
    .local v6, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v8

    invoke-interface {v8, v0, v6}, Lcom/android/server/sec/IMultiWindowList;->getPauseActionItem(Ljava/util/List;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 966
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v8, v0, v6}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPause(Ljava/util/List;Ljava/util/List;)V

    .line 969
    :cond_6
    const/4 v8, 0x0

    return v8
.end method

.method protected changeVisibilityClassItem()V
    .locals 11

    .prologue
    .line 2578
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    monitor-enter v9

    .line 2579
    :try_start_0
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 2580
    .local v4, len:I
    add-int/lit8 v3, v4, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_4

    .line 2581
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sec/MwActivityRecord;

    .line 2582
    .local v5, mwRecord:Lcom/android/server/sec/MwActivityRecord;
    iget-object v2, v5, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    .line 2583
    .local v2, compName:Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v6

    .line 2584
    .local v6, pItem:Lcom/android/server/sec/MWPackageItem;
    if-nez v6, :cond_1

    .line 2580
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2585
    :cond_1
    iget v8, v5, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    const/4 v10, 0x1

    invoke-virtual {v6, v2, v8, v10}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast(Landroid/content/ComponentName;IZ)Lcom/android/server/sec/MWClassItem;

    move-result-object v1

    .line 2586
    .local v1, cItem:Lcom/android/server/sec/MWClassItem;
    if-eqz v1, :cond_0

    .line 2587
    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowModule;->isCaptureActivity(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, v5, Lcom/android/server/sec/MwActivityRecord;->mVisible:Z

    if-nez v8, :cond_2

    iget v8, v5, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {p0, v2, v8}, Lcom/android/server/sec/MultiWindowModule;->isMaximized(Landroid/content/ComponentName;I)Z

    move-result v8

    if-nez v8, :cond_2

    iget v8, v5, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {p0, v2, v8}, Lcom/android/server/sec/MultiWindowModule;->finish(Landroid/content/ComponentName;I)Z

    .line 2588
    :cond_2
    iget-boolean v8, v5, Lcom/android/server/sec/MwActivityRecord;->mVisible:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)Z

    goto :goto_1

    .line 2592
    .end local v1           #cItem:Lcom/android/server/sec/MWClassItem;
    .end local v2           #compName:Landroid/content/ComponentName;
    .end local v3           #i:I
    .end local v4           #len:I
    .end local v5           #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    .end local v6           #pItem:Lcom/android/server/sec/MWPackageItem;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 2589
    .restart local v1       #cItem:Lcom/android/server/sec/MWClassItem;
    .restart local v2       #compName:Landroid/content/ComponentName;
    .restart local v3       #i:I
    .restart local v4       #len:I
    .restart local v5       #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    .restart local v6       #pItem:Lcom/android/server/sec/MWPackageItem;
    :cond_3
    const/4 v8, 0x4

    :try_start_1
    invoke-virtual {v1, v8}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)Z

    goto :goto_1

    .line 2591
    .end local v1           #cItem:Lcom/android/server/sec/MWClassItem;
    .end local v2           #compName:Landroid/content/ComponentName;
    .end local v5           #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    .end local v6           #pItem:Lcom/android/server/sec/MWPackageItem;
    :cond_4
    invoke-static {}, Lcom/android/server/sec/MultiWindowModule$CheckTaskItem;->clear()V

    .line 2592
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2596
    .local v0, acActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2597
    .local v7, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v8

    invoke-interface {v8, v0, v7}, Lcom/android/server/sec/IMultiWindowList;->getPauseActionItem(Ljava/util/List;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2598
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v8, v0, v7}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPause(Ljava/util/List;Ljava/util/List;)V

    .line 2600
    :cond_5
    return-void
.end method

.method public checkForceFinishedMultiWindow(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "className"

    .prologue
    .line 2237
    const/4 v0, 0x0

    .line 2238
    .local v0, Result:Z
    const-string v2, "MultiWindowModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkForceFinishedMultiWindow]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v1

    .line 2242
    .local v1, appList:Lcom/android/server/sec/IMultiWindowList;
    monitor-enter p0

    .line 2243
    const/4 v2, -0x1

    :try_start_0
    invoke-interface {v1, p1, v2}, Lcom/android/server/sec/IMultiWindowList;->realRemoveItem(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 2244
    monitor-exit p0

    .line 2246
    return v0

    .line 2244
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final checkRunningAppList()V
    .locals 9

    .prologue
    .line 1015
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 1017
    .local v6, runningTaskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    .line 1018
    .local v3, isRunningApp:Z
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v0

    .line 1019
    .local v0, appList:Lcom/android/server/sec/IMultiWindowList;
    invoke-interface {v0}, Lcom/android/server/sec/IMultiWindowList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_3

    .line 1020
    invoke-interface {v0, v1}, Lcom/android/server/sec/IMultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MWPackageItem;

    .line 1021
    .local v4, item:Lcom/android/server/sec/MWPackageItem;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1022
    .local v5, rapi:Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1023
    const/4 v3, 0x1

    .line 1028
    .end local v5           #rapi:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    if-nez v3, :cond_1

    .line 1029
    invoke-interface {v0, v1}, Lcom/android/server/sec/IMultiWindowList;->remove(I)Ljava/lang/Object;

    .line 1019
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1026
    .restart local v5       #rapi:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1032
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v5           #rapi:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    return-void
.end method

.method public destroyActivity(Landroid/content/ComponentName;I)Z
    .locals 6
    .parameter "className"
    .parameter "taskId"

    .prologue
    const/4 v5, 0x1

    .line 1117
    const/4 v0, 0x0

    .line 1129
    .local v0, Result:Z
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 1130
    .local v1, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v1, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return v0

    .line 1133
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1138
    .local v2, sClassName:Ljava/lang/String;
    invoke-virtual {v1, p2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemCount(I)I

    move-result v3

    if-ge v3, v5, :cond_2

    .line 1139
    invoke-virtual {v1, p2}, Lcom/android/server/sec/MWPackageItem;->removeTaskItem(I)V

    .line 1141
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemCount()I

    move-result v3

    if-ge v3, v5, :cond_0

    .line 1142
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/server/sec/IMultiWindowList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public finish(Landroid/content/ComponentName;I)Z
    .locals 1
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 1898
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/sec/MultiWindowModule;->finish(Landroid/content/ComponentName;IZ)Z

    move-result v0

    return v0
.end method

.method public finish(Landroid/content/ComponentName;IZ)Z
    .locals 5
    .parameter "className"
    .parameter "taskId"
    .parameter "replace"

    .prologue
    .line 1902
    const/4 v0, 0x0

    .line 1904
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/sec/MultiWindowList;->hasItemOfName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 1926
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1907
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->finishByForced(Landroid/content/ComponentName;)V

    .line 1909
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    monitor-enter v3

    .line 1910
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowList;->realRemoveItem(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1911
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1912
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    new-instance v3, Lcom/android/server/sec/MultiWindowModule$2;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/android/server/sec/MultiWindowModule$2;-><init>(Lcom/android/server/sec/MultiWindowModule;IZLandroid/content/ComponentName;)V

    invoke-virtual {v2, v3}, Lcom/android/server/sec/MultiWindowActionHandler;->post(Ljava/lang/Runnable;)Z

    .line 1924
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->finishOtherStateChanged(Landroid/content/ComponentName;)V

    .line 1925
    const-string v2, "MultiWindowModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", replace : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1926
    .restart local v1       #Result:I
    goto :goto_0

    .line 1911
    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public finishActivity(Landroid/content/ComponentName;I)Z
    .locals 11
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 1934
    const/4 v0, 0x0

    .line 1936
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1939
    .local v7, sPackageName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v9, v7}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 1940
    .local v3, delItem:Lcom/android/server/sec/MWPackageItem;
    if-nez v3, :cond_0

    move v1, v0

    .line 1986
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1943
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {v3, p2}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v5

    .line 1944
    .local v5, isFullScreenDelItem:Z
    monitor-enter p0

    .line 1945
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getRunningWindowList()Ljava/util/List;

    move-result-object v6

    .line 1946
    .local v6, runningList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1953
    .local v4, focusApp:Landroid/content/ComponentName;
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1955
    .local v2, bResumeOrRelayout:Z
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v9, p1, p2}, Lcom/android/server/sec/MultiWindowList;->removeItem(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1957
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v9, v7}, Lcom/android/server/sec/MultiWindowList;->hasItemOfName(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1958
    invoke-virtual {p0, v3}, Lcom/android/server/sec/MultiWindowModule;->setFinalDestinationRect(Lcom/android/server/sec/MWPackageItem;)V

    .line 1961
    :cond_1
    if-nez v0, :cond_2

    .line 1963
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v9, v7}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 1964
    if-eqz v3, :cond_2

    .line 1965
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemCount()I

    move-result v9

    if-lez v9, :cond_2

    .line 1966
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1967
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v8

    .line 1968
    .local v8, subObj:Lcom/android/server/sec/MWClassItem;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v9

    if-ne v9, p2, :cond_2

    .line 1969
    if-eqz v2, :cond_4

    .line 1973
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v8}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 1984
    .end local v8           #subObj:Lcom/android/server/sec/MWClassItem;
    :cond_2
    :goto_1
    if-nez v5, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->finishOtherStateChanged(Landroid/content/ComponentName;)V

    .line 1985
    :cond_3
    monitor-exit p0

    move v1, v0

    .line 1986
    .restart local v1       #Result:I
    goto :goto_0

    .line 1975
    .end local v1           #Result:I
    .restart local v8       #subObj:Lcom/android/server/sec/MWClassItem;
    :cond_4
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v8}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResume(Landroid/sec/multiwindow/IMultiWindowAction;)V

    goto :goto_1

    .line 1985
    .end local v2           #bResumeOrRelayout:Z
    .end local v4           #focusApp:Landroid/content/ComponentName;
    .end local v6           #runningList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v8           #subObj:Lcom/android/server/sec/MWClassItem;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public finishAllWindow()Z
    .locals 2

    .prologue
    .line 1043
    const-string v0, "MultiWindowModule"

    const-string v1, "[finishAllWindow]"

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    new-instance v1, Lcom/android/server/sec/MultiWindowModule$1;

    invoke-direct {v1, p0}, Lcom/android/server/sec/MultiWindowModule$1;-><init>(Lcom/android/server/sec/MultiWindowModule;)V

    invoke-virtual {v0, v1}, Lcom/android/server/sec/MultiWindowActionHandler;->post(Ljava/lang/Runnable;)Z

    .line 1058
    const/4 v0, 0x1

    return v0
.end method

.method public finishAppPid(I)Z
    .locals 7
    .parameter "pid"

    .prologue
    .line 1871
    const/4 v0, 0x0

    .line 1872
    .local v0, Result:Z
    const/4 v1, 0x0

    .line 1873
    .local v1, cName:Landroid/content/ComponentName;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 1874
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/sec/MultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getPid()I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 1875
    monitor-enter p0

    .line 1876
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/sec/MultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1877
    .end local v1           #cName:Landroid/content/ComponentName;
    .local v2, cName:Landroid/content/ComponentName;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    .line 1878
    .local v4, item:Lcom/android/server/sec/MWPackageItem;
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5, v4}, Lcom/android/server/sec/MultiWindowList;->remove(Ljava/lang/Object;)Z

    .line 1879
    const/4 v0, 0x1

    .line 1880
    const-string v5, "MultiWindowModule"

    const-string v6, "finishAppPid Result is true"

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowModule;->finishOtherStateChanged(Landroid/content/ComponentName;)V

    .line 1882
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 1887
    .end local v2           #cName:Landroid/content/ComponentName;
    .end local v4           #item:Lcom/android/server/sec/MWPackageItem;
    .restart local v1       #cName:Landroid/content/ComponentName;
    :cond_0
    return v0

    .line 1882
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1873
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1882
    .end local v1           #cName:Landroid/content/ComponentName;
    .restart local v2       #cName:Landroid/content/ComponentName;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #cName:Landroid/content/ComponentName;
    .restart local v1       #cName:Landroid/content/ComponentName;
    goto :goto_1
.end method

.method protected finishOtherStateChanged(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 1991
    return-void
.end method

.method public finishedSelfWindow(Landroid/content/ComponentName;I)Z
    .locals 3
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    monitor-enter v2

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/sec/MultiWindowList;->realRemoveItem(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 247
    monitor-exit v2

    .line 248
    return v0

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public fitToHalf(Landroid/content/ComponentName;I)Z
    .locals 13
    .parameter "className"
    .parameter "iDirection"

    .prologue
    const/4 v11, 0x0

    .line 2081
    const/4 v0, 0x0

    .line 2083
    .local v0, Result:Z
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    .line 2084
    .local v4, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v4, :cond_0

    move v1, v0

    .line 2113
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 2088
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v9

    .line 2089
    .local v9, taskId:I
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2091
    .local v7, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v5

    .line 2092
    .local v5, max:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2093
    .local v3, iDeviceWidth:I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 2096
    .local v2, iDeviceHeight:I
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 2098
    .local v6, orient:I
    rem-int/lit8 v10, v6, 0x2

    if-nez v10, :cond_3

    .line 2099
    if-nez p2, :cond_2

    move v10, v11

    :goto_1
    iput v10, v7, Landroid/graphics/Rect;->left:I

    .line 2100
    iget v10, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v10, v7, Landroid/graphics/Rect;->top:I

    .line 2101
    if-nez p2, :cond_1

    div-int/lit8 v3, v3, 0x2

    .end local v3           #iDeviceWidth:I
    :cond_1
    iput v3, v7, Landroid/graphics/Rect;->right:I

    .line 2102
    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 2110
    .end local v2           #iDeviceHeight:I
    :goto_2
    invoke-virtual {p0, p1, v7, v11}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v8

    .line 2111
    .local v8, res:Lcom/android/server/sec/MWPackageItem;
    if-eqz v8, :cond_6

    const/4 v0, 0x1

    :goto_3
    move v1, v0

    .line 2113
    .restart local v1       #Result:I
    goto :goto_0

    .line 2099
    .end local v1           #Result:I
    .end local v8           #res:Lcom/android/server/sec/MWPackageItem;
    .restart local v2       #iDeviceHeight:I
    .restart local v3       #iDeviceWidth:I
    :cond_2
    div-int/lit8 v10, v3, 0x2

    goto :goto_1

    .line 2104
    :cond_3
    iput v11, v7, Landroid/graphics/Rect;->left:I

    .line 2105
    if-nez p2, :cond_5

    iget v10, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    :goto_4
    iput v10, v7, Landroid/graphics/Rect;->top:I

    .line 2106
    iput v3, v7, Landroid/graphics/Rect;->right:I

    .line 2107
    if-nez p2, :cond_4

    div-int/lit8 v2, v2, 0x2

    .end local v2           #iDeviceHeight:I
    :cond_4
    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 2105
    .restart local v2       #iDeviceHeight:I
    :cond_5
    iget v10, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    div-int/lit8 v12, v2, 0x2

    add-int/2addr v10, v12

    goto :goto_4

    .end local v2           #iDeviceHeight:I
    .end local v3           #iDeviceWidth:I
    .restart local v8       #res:Lcom/android/server/sec/MWPackageItem;
    :cond_6
    move v0, v11

    .line 2111
    goto :goto_3
.end method

.method public freezeRotation()V
    .locals 0

    .prologue
    .line 1395
    return-void
.end method

.method public getHeight(Landroid/content/ComponentName;)I
    .locals 7
    .parameter "className"

    .prologue
    .line 195
    const/4 v0, -0x1

    .line 196
    .local v0, Result:I
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 197
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 203
    .end local v0           #Result:I
    .local v1, Result:I
    :goto_0
    return v1

    .line 200
    .end local v1           #Result:I
    .restart local v0       #Result:I
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v4

    .line 201
    .local v4, taskId:I
    invoke-virtual {v2, v4}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 202
    .local v3, rect:Landroid/graphics/Rect;
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v5, v6

    move v1, v0

    .line 203
    .end local v0           #Result:I
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public getList()Lcom/android/server/sec/IMultiWindowList;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    return-object v0
.end method

.method protected getMaximum()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 1190
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1191
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1192
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1193
    .local v2, iDeviceWidth:I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1195
    .local v1, iDeviceHeight:I
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iget v6, p0, Lcom/android/server/sec/MultiWindowModule;->sipHeight:I

    sub-int v6, v1, v6

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1196
    .local v3, maxRect:Landroid/graphics/Rect;
    return-object v3
.end method

.method public getMinimum(Landroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 6
    .parameter "className"

    .prologue
    const/4 v5, 0x0

    .line 1172
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1173
    .local v1, Result:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 1174
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    .line 1181
    :goto_0
    return-object v1

    .line 1178
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMinimumPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 1179
    .local v0, Mini:Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mMultiWindowType:Landroid/sec/multiwindow/MultiWindowType;

    return-object v0
.end method

.method protected getPackageNameOfCapture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2624
    const-string v0, "com.diotek.screen_capture"

    return-object v0
.end method

.method public getPinupWindow()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1366
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;
    .locals 3
    .parameter "className"

    .prologue
    .line 2227
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 2229
    .local v0, Result:Lcom/android/server/sec/MWPackageItem;
    return-object v0
.end method

.method protected getPreventSplit(Landroid/content/ComponentName;I)Z
    .locals 6
    .parameter "cName"
    .parameter "taskId"

    .prologue
    .line 2474
    const/4 v3, 0x0

    .line 2477
    .local v3, result:Z
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    monitor-enter v5

    .line 2478
    :try_start_0
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 2479
    .local v1, len:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 2480
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MwActivityRecord;

    .line 2482
    .local v2, mwRecord:Lcom/android/server/sec/MwActivityRecord;
    iget-object v4, v2, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v2, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    if-ne v4, p2, :cond_1

    .line 2483
    iget-boolean v3, v2, Lcom/android/server/sec/MwActivityRecord;->mPreventSplit:Z

    .line 2487
    .end local v2           #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    :cond_0
    monitor-exit v5

    .line 2488
    return v3

    .line 2479
    .restart local v2       #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2487
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getResumedWindow()Landroid/content/ComponentName;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 618
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 619
    .local v1, mObj:Lcom/android/server/sec/MWPackageItem;
    if-nez v1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-object v0

    .line 622
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v3

    .line 623
    .local v3, subObj:Lcom/android/server/sec/MWClassItem;
    if-eqz v3, :cond_0

    .line 625
    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, sClassName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 627
    .local v0, cmp:Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 628
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #cmp:Landroid/content/ComponentName;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cmp:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public getRunningList()Ljava/util/List;
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
    .line 2603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2605
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v2

    .line 2606
    .local v2, imwList:Lcom/android/server/sec/IMultiWindowList;
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    monitor-enter v5

    .line 2607
    :try_start_0
    invoke-interface {v2}, Lcom/android/server/sec/IMultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MWPackageItem;

    .line 2608
    .local v3, mwObj2:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2610
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mwObj2:Lcom/android/server/sec/MWPackageItem;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2612
    return-object v0
.end method

.method public getRunningWindowList()Ljava/util/List;
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
    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v2

    .line 492
    .local v2, imwList:Lcom/android/server/sec/IMultiWindowList;
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    monitor-enter v5

    .line 493
    :try_start_0
    invoke-interface {v2}, Lcom/android/server/sec/IMultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MWPackageItem;

    .line 494
    .local v3, mwObj2:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 496
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mwObj2:Lcom/android/server/sec/MWPackageItem;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    return-object v0
.end method

.method protected getTaskFromId(Ljava/util/List;Landroid/content/ComponentName;)I
    .locals 4
    .parameter
    .parameter "cn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1762
    .local p1, lst:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1763
    .local v1, item:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 1766
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1767
    iget v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 1769
    .end local v1           #item:Landroid/app/ActivityManager$RecentTaskInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method protected getVisibleTask(Landroid/content/ComponentName;)I
    .locals 6
    .parameter "className"

    .prologue
    .line 585
    const/4 v3, -0x1

    .line 586
    .local v3, result:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v1, mList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MwActivityRecord;>;"
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mBeforeRunningList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 588
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    .line 592
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 593
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MwActivityRecord;

    .line 594
    .local v2, mwRecord:Lcom/android/server/sec/MwActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/sec/MwActivityRecord;->mVisible:Z

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v5, v2, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {p0, v4, v5}, Lcom/android/server/sec/MultiWindowModule;->isMaximized(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 595
    iget v3, v2, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    .line 599
    .end local v2           #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    :cond_0
    return v3

    .line 590
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mBeforeRunningList:Ljava/util/List;

    goto :goto_0

    .line 592
    .restart local v0       #i:I
    .restart local v2       #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getVisibleWindowList()Ljava/util/List;
    .locals 1
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
    .line 481
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mVisibleList:Ljava/util/List;

    return-object v0
.end method

.method public getWidth(Landroid/content/ComponentName;)I
    .locals 7
    .parameter "className"

    .prologue
    .line 178
    const/4 v0, -0x1

    .line 179
    .local v0, Result:I
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 180
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 186
    .end local v0           #Result:I
    .local v1, Result:I
    :goto_0
    return v1

    .line 183
    .end local v1           #Result:I
    .restart local v0       #Result:I
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v4

    .line 184
    .local v4, taskId:I
    invoke-virtual {v2, v4}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 185
    .local v3, rect:Landroid/graphics/Rect;
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v5, v6

    move v1, v0

    .line 186
    .end local v0           #Result:I
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public hasFullSreen()Z
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/sec/IMultiWindowList;->hasFullSreen()Z

    move-result v0

    return v0
.end method

.method public initWindowClassInfo(Landroid/content/ComponentName;I)V
    .locals 6
    .parameter "className"
    .parameter "pid"

    .prologue
    .line 667
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 669
    .local v1, obj:Lcom/android/server/sec/MWPackageItem;
    if-nez v1, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    .line 671
    .local v0, lst:Lcom/android/server/sec/MultiWindowList;
    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowList;->getNewItemInstance(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 672
    invoke-virtual {v0, v1}, Lcom/android/server/sec/MultiWindowList;->add(Lcom/android/server/sec/MWPackageItem;)Z

    .line 673
    const-string v3, "MultiWindowModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "list add:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v0           #lst:Lcom/android/server/sec/MultiWindowList;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/sec/MWPackageItem;->setPid(I)V

    .line 678
    return-void
.end method

.method protected isCaptureActivity(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "compName"

    .prologue
    .line 2616
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowModule;->isCaptureActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isCaptureActivity(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 2620
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getPackageNameOfCapture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDuplicated(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 405
    .local v0, Result:Z
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 406
    .local v1, mwo:Lcom/android/server/sec/MWPackageItem;
    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getInnerItem()Lcom/android/server/sec/MWPackageItem$InnerItem;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 409
    :cond_0
    :goto_0
    return v0

    .line 407
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLeft(Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "com"

    .prologue
    const/4 v4, 0x0

    .line 894
    const/4 v2, 0x0

    .line 896
    .local v2, result:Z
    if-nez p1, :cond_1

    .line 908
    :cond_0
    :goto_0
    return v4

    .line 897
    :cond_1
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 899
    .local v0, pItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v3

    .line 902
    .local v3, taskId:I
    invoke-virtual {v0, v3}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 904
    .local v1, pItemRect:Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 906
    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-nez v5, :cond_2

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v4, v2

    .line 908
    goto :goto_0

    :cond_2
    move v2, v4

    .line 906
    goto :goto_1
.end method

.method protected isLeft(Landroid/content/ComponentName;I)Z
    .locals 6
    .parameter "com"
    .parameter "taskId"

    .prologue
    const/4 v3, 0x0

    .line 911
    const/4 v2, 0x0

    .line 913
    .local v2, result:Z
    if-nez p1, :cond_1

    .line 925
    :cond_0
    :goto_0
    return v3

    .line 914
    :cond_1
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 916
    .local v0, pItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v0, :cond_0

    .line 919
    invoke-virtual {v0, p2}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 921
    .local v1, pItemRect:Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 923
    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_2

    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v3, v2

    .line 925
    goto :goto_0

    :cond_2
    move v2, v3

    .line 923
    goto :goto_1
.end method

.method public isMaximized(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "className"

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, Result:Z
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 364
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 370
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 368
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v3

    .line 369
    .local v3, taskId:I
    invoke-virtual {v2, v3}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v0

    move v1, v0

    .line 370
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public isMaximized(Landroid/content/ComponentName;I)Z
    .locals 7
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 379
    const/4 v0, 0x1

    .line 380
    .local v0, Result:Z
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 381
    .local v3, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v3, :cond_2

    .line 382
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 383
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5, v2}, Lcom/android/server/sec/MultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MWPackageItem;

    .line 384
    .local v4, m:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v4, p2}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 386
    const/4 v0, 0x0

    .end local v4           #m:Lcom/android/server/sec/MWPackageItem;
    :cond_0
    move v1, v0

    .line 394
    .end local v0           #Result:Z
    .end local v2           #i:I
    .local v1, Result:Z
    :goto_1
    return v1

    .line 382
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local v2       #i:I
    .restart local v4       #m:Lcom/android/server/sec/MWPackageItem;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    .end local v2           #i:I
    .end local v4           #m:Lcom/android/server/sec/MWPackageItem;
    :cond_2
    invoke-virtual {v3, p2}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v0

    move v1, v0

    .line 394
    .end local v0           #Result:Z
    .restart local v1       #Result:Z
    goto :goto_1
.end method

.method public isPermissionOff()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionCheck:Z

    return v0
.end method

.method public isPinupWindow(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "className"

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"

    .prologue
    .line 509
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, sPackageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 511
    .local v1, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 512
    .local v0, Result:Z
    :goto_0
    return v0

    .line 511
    .end local v0           #Result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible(Landroid/content/ComponentName;)Z
    .locals 10
    .parameter "className"

    .prologue
    .line 554
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 555
    .local v6, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v2

    .line 556
    .local v2, appList:Lcom/android/server/sec/IMultiWindowList;
    invoke-interface {v2, v6}, Lcom/android/server/sec/IMultiWindowList;->hasItemOfName(Ljava/lang/String;)Z

    move-result v0

    .line 557
    .local v0, Result:Z
    if-nez v0, :cond_0

    move v1, v0

    .line 581
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 560
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/server/sec/IMultiWindowList;->isVisible(Landroid/content/ComponentName;)Z

    move-result v0

    .line 562
    if-eqz v0, :cond_3

    .line 563
    invoke-interface {v2, v6}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    .line 564
    .local v4, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v4, :cond_1

    .line 565
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v5

    .line 566
    .local v5, mwSub:Lcom/android/server/sec/MWClassItem;
    if-eqz v5, :cond_1

    .line 567
    invoke-virtual {v5}, Lcom/android/server/sec/MWClassItem;->getMultiWindowVisibleFlag()I

    move-result v3

    .line 568
    .local v3, flag:I
    and-int/lit8 v8, v3, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 569
    const/4 v0, 0x0

    .line 574
    .end local v3           #flag:I
    .end local v5           #mwSub:Lcom/android/server/sec/MWClassItem;
    :cond_1
    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 575
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getInnerItem()Lcom/android/server/sec/MWPackageItem$InnerItem;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 576
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 577
    .local v7, sClass:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getInnerItem()Lcom/android/server/sec/MWPackageItem$InnerItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/sec/MWPackageItem$InnerItem;->getParentClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getInnerItem()Lcom/android/server/sec/MWPackageItem$InnerItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/sec/MWPackageItem$InnerItem;->getChildClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    const/4 v0, 0x1

    .end local v4           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v7           #sClass:Ljava/lang/String;
    :cond_3
    :goto_1
    move v1, v0

    .line 581
    .restart local v1       #Result:I
    goto :goto_0

    .line 577
    .end local v1           #Result:I
    .restart local v4       #item:Lcom/android/server/sec/MWPackageItem;
    .restart local v7       #sClass:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public maximize(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "className"

    .prologue
    .line 2016
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->setToMax(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public maximizeAll()Z
    .locals 5

    .prologue
    .line 2024
    const/4 v0, 0x1

    .line 2025
    .local v0, Result:Z
    const/4 v3, -0x1

    .line 2027
    .local v3, taskId:I
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWPackageItem;

    .line 2028
    .local v1, allItem:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v3

    .line 2029
    invoke-virtual {v1, v3}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2030
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowModule;->setToMax(Landroid/content/ComponentName;)Z

    goto :goto_0

    .line 2033
    .end local v1           #allItem:Lcom/android/server/sec/MWPackageItem;
    :cond_1
    return v0
.end method

.method public minimize(Landroid/content/ComponentName;)Z
    .locals 13
    .parameter "className"

    .prologue
    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 2406
    const/4 v0, 0x0

    .line 2408
    .local v0, Result:Z
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v6

    .line 2409
    .local v6, obj:Lcom/android/server/sec/MWPackageItem;
    if-nez v6, :cond_0

    move v1, v0

    .line 2453
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 2412
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 2413
    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/sec/MWClassItem;->getMultiWindowVisibleFlag()I

    move-result v9

    if-ne v9, v11, :cond_1

    .line 2414
    const-string v9, "MultiWindowModule"

    const-string v10, "[minimize] Has already been applied."

    invoke-static {v9, v10}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    const/4 v0, 0x1

    move v1, v0

    .line 2416
    .restart local v1       #Result:I
    goto :goto_0

    .line 2419
    .end local v1           #Result:I
    :cond_1
    const-string v9, "MultiWindowModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[minimize] className : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/sec/MultiWindowModule;->setPermissionOff(Z)V

    .line 2422
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    .line 2423
    .local v4, amsSelf:Lcom/android/server/am/ActivityManagerService;
    const/16 v9, 0x64

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks(II)Ljava/util/List;

    move-result-object v7

    .line 2425
    .local v7, rtList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {p0, v7, p1}, Lcom/android/server/sec/MultiWindowModule;->getTaskFromId(Ljava/util/List;Landroid/content/ComponentName;)I

    move-result v2

    .line 2426
    .local v2, Taskid:I
    if-ltz v2, :cond_3

    .line 2427
    const-string v9, "MultiWindowModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[minimize] Taskid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService;->moveTaskToBack(I)V

    .line 2429
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->mwEnsureActivitiesVisible()V

    .line 2432
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2433
    if-eqz v6, :cond_2

    .line 2434
    :try_start_1
    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v5

    .line 2435
    .local v5, last:Lcom/android/server/sec/MWClassItem;
    if-eqz v5, :cond_2

    .line 2436
    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)Z

    .line 2439
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2440
    .local v3, acActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2441
    .local v8, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v9, v3, v8}, Lcom/android/server/sec/MultiWindowList;->getPauseActionItem(Ljava/util/List;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2442
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v9, v3, v8}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPause(Ljava/util/List;Ljava/util/List;)V

    .line 2446
    .end local v3           #acActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    .end local v5           #last:Lcom/android/server/sec/MWClassItem;
    .end local v8           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2447
    const/4 v0, 0x1

    .line 2450
    :cond_3
    invoke-virtual {p0, v12}, Lcom/android/server/sec/MultiWindowModule;->setPermissionOff(Z)V

    move v1, v0

    .line 2453
    .restart local v1       #Result:I
    goto/16 :goto_0

    .line 2446
    .end local v1           #Result:I
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2450
    .end local v2           #Taskid:I
    .end local v4           #amsSelf:Lcom/android/server/am/ActivityManagerService;
    .end local v7           #rtList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catchall_1
    move-exception v9

    invoke-virtual {p0, v12}, Lcom/android/server/sec/MultiWindowModule;->setPermissionOff(Z)V

    throw v9
.end method

.method public notifySIP(I)Z
    .locals 1
    .parameter "height"

    .prologue
    .line 1861
    const/4 v0, 0x0

    .line 1863
    .local v0, Result:Z
    return v0
.end method

.method public orientationChangeRestore(Landroid/content/ComponentName;I)Z
    .locals 1
    .parameter "cName"
    .parameter "orientation"

    .prologue
    .line 2123
    const/4 v0, 0x0

    .line 2129
    .local v0, Result:Z
    return v0
.end method

.method public pauseChangeInformation(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "className"

    .prologue
    .line 976
    const/4 v0, 0x0

    .line 993
    .local v0, Result:Z
    return v0
.end method

.method public postResume(Landroid/content/ComponentName;I)Z
    .locals 7
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 2041
    const/4 v0, 0x0

    .line 2044
    .local v0, Result:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 2072
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 2047
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    const-string v4, "MultiWindowModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postResume>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 2050
    .local v3, obj:Lcom/android/server/sec/MWPackageItem;
    if-eqz v3, :cond_1

    .line 2051
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->procSubClassOrganize()Z

    move-result v0

    .line 2054
    :cond_1
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2055
    const-string v4, "MultiWindowModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEscapedList.containsKey("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    :cond_2
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    if-eqz v4, :cond_4

    .line 2060
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    iget-object v4, v4, Lcom/android/server/sec/MultiWindowModule$ResumeItem;->ResumeData:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2061
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    iget-object v4, v4, Lcom/android/server/sec/MultiWindowModule$ResumeItem;->MwListener:Landroid/sec/multiwindow/IMultiWindowListener;

    if-eqz v4, :cond_3

    .line 2063
    :try_start_0
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    iget-object v4, v4, Lcom/android/server/sec/MultiWindowModule$ResumeItem;->MwListener:Landroid/sec/multiwindow/IMultiWindowListener;

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowListener;->onResumeFinish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2068
    :cond_3
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    :cond_4
    move v1, v0

    .line 2072
    .restart local v1       #Result:I
    goto/16 :goto_0

    .line 2064
    .end local v1           #Result:I
    :catch_0
    move-exception v2

    .line 2065
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public rePositionOfAllWindows()V
    .locals 5

    .prologue
    .line 2133
    const-string v2, "MultiWindowModule"

    const-string v3, "rePositionOfAllWindows"

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 2139
    .local v1, size:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 2140
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MwActivityRecord;

    iget-object v3, v2, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MwActivityRecord;

    iget v2, v2, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/sec/MultiWindowModule;->rePositionOfWindow(Landroid/content/ComponentName;IZ)Z

    .line 2139
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2142
    :cond_0
    return-void
.end method

.method protected rePositionOfWindow(Landroid/content/ComponentName;IZ)Z
    .locals 13
    .parameter "cName"
    .parameter "taskId"
    .parameter "needResume"

    .prologue
    .line 2185
    const/4 v0, 0x1

    .line 2187
    .local v0, Result:Z
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v2

    .line 2189
    .local v2, imwList:Lcom/android/server/sec/IMultiWindowList;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 2191
    .local v3, item:Lcom/android/server/sec/MWPackageItem;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v3, p2}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2193
    .local v5, rect:Landroid/graphics/Rect;
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v1

    .line 2195
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v3, p2}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2197
    invoke-virtual {p0, v1, p2}, Lcom/android/server/sec/MultiWindowModule;->setToMax(Landroid/content/ComponentName;I)Z

    .line 2218
    :cond_0
    :goto_0
    return v0

    .line 2199
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {p0, v1, p2, v5, v9}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;ILandroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v6

    .line 2201
    .local v6, resultItem:Lcom/android/server/sec/MWPackageItem;
    move v8, p2

    .line 2204
    .local v8, resultTaskId:I
    if-eqz v6, :cond_0

    .line 2205
    invoke-virtual {v6, v8}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v7

    .line 2206
    .local v7, resultRect:Landroid/graphics/Rect;
    if-eqz p3, :cond_0

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2207
    invoke-virtual {v6, p1, p2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast(Landroid/content/ComponentName;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v4

    .line 2208
    .local v4, obj:Lcom/android/server/sec/MWClassItem;
    if-eqz v4, :cond_0

    .line 2210
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v10

    new-instance v11, Landroid/sec/multiwindow/PreventSplitItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->getPreventSplit(Landroid/content/ComponentName;I)Z

    move-result v12

    invoke-direct {v11, v5, v12}, Landroid/sec/multiwindow/PreventSplitItem;-><init>(Landroid/graphics/Rect;Z)V

    invoke-virtual {v9, v10, v11}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/sec/multiwindow/PreventSplitItem;)V

    .line 2211
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 2212
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Lcom/android/server/sec/MultiWindowActionHandler;->actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected rePositionOfWindow(Landroid/content/ComponentName;Z)Z
    .locals 14
    .parameter "cName"
    .parameter "needResume"

    .prologue
    .line 2148
    const/4 v0, 0x1

    .line 2150
    .local v0, Result:Z
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v2

    .line 2152
    .local v2, imwList:Lcom/android/server/sec/IMultiWindowList;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 2153
    .local v3, item:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v9

    .line 2154
    .local v9, taskId:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v3, v9}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2156
    .local v5, rect:Landroid/graphics/Rect;
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v1

    .line 2158
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v3, v9}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2160
    invoke-virtual {p0, v1}, Lcom/android/server/sec/MultiWindowModule;->setToMax(Landroid/content/ComponentName;)Z

    .line 2178
    :cond_0
    :goto_0
    return v0

    .line 2162
    :cond_1
    const/4 v10, 0x1

    invoke-virtual {p0, v1, v5, v10}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v6

    .line 2163
    .local v6, resultItem:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v8

    .line 2166
    .local v8, resultTaskId:I
    invoke-virtual {v6, v8}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v7

    .line 2167
    .local v7, resultRect:Landroid/graphics/Rect;
    if-eqz p2, :cond_0

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2168
    invoke-virtual {v6, p1, v9}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast(Landroid/content/ComponentName;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v4

    .line 2169
    .local v4, obj:Lcom/android/server/sec/MWClassItem;
    if-eqz v4, :cond_0

    .line 2171
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v11

    new-instance v12, Landroid/sec/multiwindow/PreventSplitItem;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/sec/MultiWindowModule;->getPreventSplit(Landroid/content/ComponentName;I)Z

    move-result v13

    invoke-direct {v12, v5, v13}, Landroid/sec/multiwindow/PreventSplitItem;-><init>(Landroid/graphics/Rect;Z)V

    invoke-virtual {v10, v11, v12}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/sec/multiwindow/PreventSplitItem;)V

    .line 2172
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 2173
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Lcom/android/server/sec/MultiWindowActionHandler;->actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public regMultiWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z
    .locals 10
    .parameter "className"
    .parameter "mwAction"
    .parameter "taskId"

    .prologue
    .line 772
    const/4 v0, 0x0

    .line 774
    .local v0, Result:Z
    if-nez p1, :cond_0

    .line 775
    const-string v8, "MultiWindowModule"

    const-string v9, "invalid params : className=null"

    invoke-static {v8, v9}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 818
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 779
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    .line 780
    .local v5, obj:Lcom/android/server/sec/MWPackageItem;
    if-nez v5, :cond_1

    .line 781
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v8, p1}, Lcom/android/server/sec/MultiWindowList;->getNewItemInstance(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    .line 782
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v8, v5}, Lcom/android/server/sec/MultiWindowList;->add(Lcom/android/server/sec/MWPackageItem;)Z

    .line 791
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getInnerItem()Lcom/android/server/sec/MWPackageItem$InnerItem;

    move-result-object v3

    .line 792
    .local v3, inner:Lcom/android/server/sec/MWPackageItem$InnerItem;
    if-eqz v3, :cond_3

    .line 793
    invoke-virtual {v3, p2}, Lcom/android/server/sec/MWPackageItem$InnerItem;->setMultiWindowAction(Landroid/sec/multiwindow/IMultiWindowAction;)Z

    move-result v0

    :cond_2
    :goto_1
    move v1, v0

    .line 818
    .restart local v1       #Result:I
    goto :goto_0

    .line 795
    .end local v1           #Result:I
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, p2, p3}, Lcom/android/server/sec/MWPackageItem;->addSubClassObject(Ljava/lang/String;Landroid/sec/multiwindow/IMultiWindowAction;I)Z

    move-result v0

    .line 796
    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->procSubClassOrganize()Z

    .line 797
    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    .line 799
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v6, prevClassItem:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .local v7, prevVisible:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getSubClassList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MWClassItem;

    .line 803
    .local v4, lastMWClassItem:Lcom/android/server/sec/MWClassItem;
    if-eqz v4, :cond_4

    .line 804
    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)Z

    move-result v2

    .line 806
    .local v2, changeFlag:Z
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    if-eqz v2, :cond_2

    .line 808
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPause(Ljava/util/List;Ljava/util/List;)V

    .line 809
    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->procMultiWindowVisibleFlagFuncCalled()V

    goto :goto_1

    .line 813
    .end local v2           #changeFlag:Z
    :cond_4
    const-string v8, "MultiWindowModule"

    const-string v9, "lastMWClasItem=null"

    invoke-static {v8, v9}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final regSubMultiWindowClass(Landroid/content/ComponentName;)Z
    .locals 8
    .parameter "className"

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, Result:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 657
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 643
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    const-string v5, "MultiWindowModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[regSubMultiWindowClass] ClassName  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 645
    .local v4, sPackageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, sClassName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 648
    .local v2, obj:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_1

    .line 649
    const-string v5, "MultiWindowModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[regSubMultiWindowClass] MWPackageItem is null, packageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 650
    .restart local v1       #Result:I
    goto :goto_0

    .line 653
    .end local v1           #Result:I
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getInnerItem()Lcom/android/server/sec/MWPackageItem$InnerItem;

    move-result-object v5

    if-nez v5, :cond_2

    .line 654
    const/4 v5, -0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/server/sec/MWPackageItem;->addSubClassObject(Ljava/lang/String;I)Z

    move-result v0

    :cond_2
    move v1, v0

    .line 657
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public resetAppList(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MwActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2457
    .local p1, mwList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MwActivityRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2458
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2459
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MwActivityRecord;

    .line 2460
    .local v2, mwRecord:Lcom/android/server/sec/MwActivityRecord;
    const-string v3, "MultiWindowModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/sec/MwActivityRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2462
    .end local v2           #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->resetRunningList(Ljava/util/List;)V

    .line 2463
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->resetVisibleItem(Ljava/util/List;)V

    .line 2465
    return-void
.end method

.method public resetVisibleItem(Ljava/util/List;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MwActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2496
    .local p1, mwList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MwActivityRecord;>;"
    const/4 v0, 0x0

    .line 2497
    .local v0, hasCapture:Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2498
    .local v3, mSplitVisibleList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MwActivityRecord;>;"
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mVisibleList:Ljava/util/List;

    monitor-enter v10

    .line 2499
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2500
    .local v2, len:I
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mVisibleList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 2501
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2502
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MwActivityRecord;

    .line 2503
    .local v4, mwRecord:Lcom/android/server/sec/MwActivityRecord;
    iget-boolean v9, v4, Lcom/android/server/sec/MwActivityRecord;->mVisible:Z

    if-eqz v9, :cond_0

    .line 2504
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mVisibleList:Ljava/util/List;

    iget-object v11, v4, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2505
    iget-boolean v9, v4, Lcom/android/server/sec/MwActivityRecord;->fullscreen:Z

    if-eqz v9, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2501
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2509
    .end local v4           #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    :cond_1
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mVisibleList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    .line 2510
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 2511
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mVisibleList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    invoke-virtual {p0, v9}, Lcom/android/server/sec/MultiWindowModule;->isCaptureActivity(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2512
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mVisibleList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2513
    const/4 v0, 0x1

    .line 2518
    :cond_2
    if-eqz v0, :cond_6

    .line 2519
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    .line 2520
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getPackageNameOfCapture()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v6

    .line 2522
    .local v6, pItemCapture:Lcom/android/server/sec/MWPackageItem;
    if-eqz v6, :cond_6

    .line 2523
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getPackageNameOfCapture()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 2524
    .local v7, rectCapture:Landroid/graphics/Rect;
    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-ltz v1, :cond_6

    .line 2525
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mRunningList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MwActivityRecord;

    .line 2526
    .restart local v4       #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    iget-object v9, v4, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v9}, Lcom/android/server/sec/MultiWindowModule;->isCaptureActivity(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2524
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2510
    .end local v4           #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    .end local v6           #pItemCapture:Lcom/android/server/sec/MWPackageItem;
    .end local v7           #rectCapture:Landroid/graphics/Rect;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2527
    .restart local v4       #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    .restart local v6       #pItemCapture:Lcom/android/server/sec/MWPackageItem;
    .restart local v7       #rectCapture:Landroid/graphics/Rect;
    :cond_5
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    iget-object v11, v4, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    .line 2528
    .local v5, pItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v5, :cond_3

    .line 2529
    iget v9, v4, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {v5, v9}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v8

    .line 2530
    .local v8, rectTemp:Landroid/graphics/Rect;
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2531
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mVisibleList:Ljava/util/List;

    iget-object v11, v4, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2537
    .end local v4           #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    .end local v5           #pItem:Lcom/android/server/sec/MWPackageItem;
    .end local v6           #pItemCapture:Lcom/android/server/sec/MWPackageItem;
    .end local v7           #rectCapture:Landroid/graphics/Rect;
    .end local v8           #rectTemp:Landroid/graphics/Rect;
    :cond_6
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2538
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->changeVisibilityClassItem()V

    .line 2540
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-nez v9, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 2541
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MwActivityRecord;

    .line 2542
    .restart local v4       #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    if-eqz v4, :cond_7

    iget-object v9, v4, Lcom/android/server/sec/MwActivityRecord;->mComponentName:Landroid/content/ComponentName;

    iget v10, v4, Lcom/android/server/sec/MwActivityRecord;->mTaskId:I

    invoke-virtual {p0, v9, v10}, Lcom/android/server/sec/MultiWindowModule;->setToMax(Landroid/content/ComponentName;I)Z

    .line 2544
    .end local v4           #mwRecord:Lcom/android/server/sec/MwActivityRecord;
    :cond_7
    return-void

    .line 2537
    .end local v1           #i:I
    .end local v2           #len:I
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method

.method public restore(Landroid/content/ComponentName;)Z
    .locals 13
    .parameter "className"

    .prologue
    const/4 v12, 0x0

    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, Result:Z
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 262
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 299
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 266
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v9

    .line 267
    .local v9, taskId:I
    invoke-virtual {v2, v9}, Lcom/android/server/sec/MWPackageItem;->getRestoreRect(I)Landroid/graphics/Rect;

    move-result-object v8

    .line 269
    .local v8, restoreRect:Landroid/graphics/Rect;
    invoke-virtual {v2, v9}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-eqz v10, :cond_1

    move v1, v0

    .line 270
    .restart local v1       #Result:I
    goto :goto_0

    .line 273
    .end local v1           #Result:I
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 274
    .local v7, packageName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 276
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 277
    .local v3, itemRect:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v10, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v2, v9, v10}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 280
    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 286
    .end local v3           #itemRect:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-nez v10, :cond_4

    .line 287
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->getMinimum(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v5

    .line 288
    .local v5, miniRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v4

    .line 289
    .local v4, maxRect:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v8, v12, v12, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 290
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v11}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v11, v11, 0x1e

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v11}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v11, v11, 0x1e

    iget v12, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 293
    .end local v4           #maxRect:Landroid/graphics/Rect;
    .end local v5           #miniRect:Landroid/graphics/Rect;
    :cond_4
    sget-object v10, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v2, v9, v10}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 294
    const/4 v10, 0x1

    invoke-virtual {p0, p1, v8, v10}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v6

    .line 295
    .local v6, mwItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v6, :cond_5

    .line 296
    const/4 v0, 0x1

    :cond_5
    move v1, v0

    .line 299
    .restart local v1       #Result:I
    goto/16 :goto_0
.end method

.method public restore(Landroid/content/ComponentName;I)Z
    .locals 12
    .parameter "className"
    .parameter "taskId"

    .prologue
    const/4 v11, 0x0

    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, Result:Z
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 312
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 349
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 317
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {v2, p2}, Lcom/android/server/sec/MWPackageItem;->getRestoreRect(I)Landroid/graphics/Rect;

    move-result-object v8

    .line 319
    .local v8, restoreRect:Landroid/graphics/Rect;
    invoke-virtual {v2, p2}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-eqz v9, :cond_1

    move v1, v0

    .line 320
    .restart local v1       #Result:I
    goto :goto_0

    .line 323
    .end local v1           #Result:I
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 324
    .local v7, packageName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 326
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 327
    .local v3, itemRect:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v9, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v2, p2, v9}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 330
    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 336
    .end local v3           #itemRect:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-nez v9, :cond_4

    .line 337
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->getMinimum(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v5

    .line 338
    .local v5, miniRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v4

    .line 339
    .local v4, maxRect:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v8, v11, v11, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 340
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v10}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v10, v10, 0x1e

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v10}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v10, v10, 0x1e

    iget v11, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 343
    .end local v4           #maxRect:Landroid/graphics/Rect;
    .end local v5           #miniRect:Landroid/graphics/Rect;
    :cond_4
    sget-object v9, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v2, p2, v9}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 344
    const/4 v9, 0x1

    invoke-virtual {p0, p1, p2, v8, v9}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;ILandroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v6

    .line 345
    .local v6, mwItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v6, :cond_5

    .line 346
    const/4 v0, 0x1

    :cond_5
    move v1, v0

    .line 349
    .restart local v1       #Result:I
    goto/16 :goto_0
.end method

.method public restoreRotation()V
    .locals 0

    .prologue
    .line 1418
    return-void
.end method

.method public resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z
    .locals 6
    .parameter "className"
    .parameter "mwListener"

    .prologue
    .line 1069
    const/4 v0, 0x0

    .line 1070
    .local v0, Result:Z
    const-string v4, "MultiWindowModule"

    const-string v5, "[resume]"

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1073
    .local v3, sPackageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 1074
    .local v2, mObj:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 1086
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1077
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    new-instance v4, Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    invoke-direct {v4, p1, p2}, Lcom/android/server/sec/MultiWindowModule$ResumeItem;-><init>(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)V

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    .line 1079
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    monitor-enter v5

    .line 1080
    :try_start_0
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    invoke-virtual {v4, p1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->add(Landroid/content/ComponentName;)Z

    .line 1081
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->runNextMultiWindow()V

    .line 1084
    const/4 v0, 0x1

    move v1, v0

    .line 1086
    .restart local v1       #Result:I
    goto :goto_0

    .line 1081
    .end local v1           #Result:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public resumeChangeInformation(Landroid/content/ComponentName;I)V
    .locals 0
    .parameter "className"
    .parameter "taskID"

    .prologue
    .line 891
    return-void
.end method

.method protected runNextMultiWindow()V
    .locals 6

    .prologue
    .line 1000
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    monitor-enter v2

    .line 1001
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    invoke-virtual {v1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    .line 1002
    monitor-exit v2

    .line 1008
    :goto_0
    return-void

    .line 1003
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1006
    .local v0, tm:Ljava/util/Timer;
    new-instance v1, Lcom/android/server/sec/MultiWindowModule$TimerRun;

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/sec/MultiWindowModule$TimerRun;-><init>(Landroid/content/Context;Lcom/android/server/sec/MultiWindowModule$RunAppList;Lcom/android/server/sec/IMultiWindowList;)V

    const-wide/16 v2, 0x32

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1007
    const-string v1, "MultiWindowModule"

    const-string v2, " item runing~"

    invoke-static {v1, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1003
    .end local v0           #tm:Ljava/util/Timer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final saveCaptureItem(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)Z
    .locals 21
    .parameter "className"
    .parameter "bitmap"

    .prologue
    .line 1267
    const/4 v2, 0x0

    .line 1269
    .local v2, Result:Z
    invoke-static/range {p2 .. p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1270
    .local v14, thumbnail:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v8

    .line 1271
    .local v8, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v8, :cond_0

    if-nez v14, :cond_1

    :cond_0
    move v3, v2

    .line 1320
    .end local v2           #Result:Z
    .local v3, Result:I
    :goto_0
    return v3

    .line 1274
    .end local v3           #Result:I
    .restart local v2       #Result:Z
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v12

    .line 1275
    .local v12, taskId:I
    invoke-virtual {v8, v12}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v18

    if-nez v18, :cond_7

    .line 1276
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1277
    .local v4, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1278
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v5, v0

    .line 1280
    .local v5, displayWidth:D
    invoke-virtual {v8, v12}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v11

    .line 1281
    .local v11, r:Landroid/graphics/Rect;
    const/4 v15, 0x0

    .local v15, widthM:I
    const/4 v7, 0x0

    .local v7, heightM:I
    const/16 v16, 0x0

    .local v16, xM:I
    const/16 v17, 0x0

    .line 1283
    .local v17, yM:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v9, v5, v18

    .line 1285
    .local v9, multipleValue:D
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v18, v18, v9

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v15, v0

    .line 1286
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v18, v18, v9

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v7, v0

    .line 1287
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v18, v18, v9

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v16, v0

    .line 1288
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v18, v18, v9

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    .line 1291
    add-int v18, v15, v16

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 1292
    add-int v18, v15, v16

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    sub-int v18, v18, v19

    sub-int v15, v15, v18

    .line 1294
    :cond_2
    add-int v18, v7, v17

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 1295
    add-int v18, v7, v17

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    sub-int v18, v18, v19

    sub-int v7, v7, v18

    .line 1298
    :cond_3
    if-gez v16, :cond_4

    .line 1299
    add-int v15, v15, v16

    .line 1300
    const/16 v16, 0x0

    .line 1302
    :cond_4
    if-gez v17, :cond_5

    .line 1303
    add-int v7, v7, v17

    .line 1304
    const/16 v17, 0x0

    .line 1307
    :cond_5
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v1, v15, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1308
    .local v13, temp:Landroid/graphics/Bitmap;
    if-eqz v14, :cond_6

    .line 1309
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 1310
    const/4 v14, 0x0

    .line 1313
    :cond_6
    const-string v18, "MultiWindowModule"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "capture - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    invoke-virtual {v8, v13}, Lcom/android/server/sec/MWPackageItem;->setBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    .end local v4           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v5           #displayWidth:D
    .end local v7           #heightM:I
    .end local v9           #multipleValue:D
    .end local v11           #r:Landroid/graphics/Rect;
    .end local v13           #temp:Landroid/graphics/Bitmap;
    .end local v15           #widthM:I
    .end local v16           #xM:I
    .end local v17           #yM:I
    :goto_1
    move v3, v2

    .line 1320
    .restart local v3       #Result:I
    goto/16 :goto_0

    .line 1316
    .end local v3           #Result:I
    :cond_7
    const-string v18, "MultiWindowModule"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "capture - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-virtual {v8, v14}, Lcom/android/server/sec/MWPackageItem;->setBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    goto :goto_1
.end method

.method public screenShot()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    .line 1215
    const/4 v0, 0x0

    .line 1217
    .local v0, Result:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 1218
    .local v5, display:Landroid/view/Display;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1219
    .local v4, dispalyMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1220
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1222
    .local v6, metrixs:Landroid/graphics/Matrix;
    const/4 v9, 0x2

    new-array v3, v9, [F

    const/4 v9, 0x0

    iget v10, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    aput v10, v3, v9

    const/4 v9, 0x1

    iget v10, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v10, v10

    aput v10, v3, v9

    .line 1223
    .local v3, dims:[F
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/sec/MultiWindowModule;->getDegreesForRotation(I)F

    move-result v2

    .line 1224
    .local v2, degrees:F
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_3

    const/4 v7, 0x1

    .line 1225
    .local v7, requiresRotation:Z
    :goto_0
    if-eqz v7, :cond_0

    .line 1227
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 1228
    neg-float v9, v2

    invoke-virtual {v6, v9}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1229
    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1230
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v3, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    aput v10, v3, v9

    .line 1231
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v3, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    aput v10, v3, v9

    .line 1235
    :cond_0
    const/4 v9, 0x0

    aget v9, v3, v9

    float-to-int v9, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    float-to-int v10, v10

    const/4 v11, 0x0

    const/16 v12, 0x752f

    invoke-static {v9, v10, v11, v12}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1236
    if-eqz v7, :cond_1

    .line 1238
    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1240
    .local v8, ss:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1241
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1242
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1243
    const/4 v9, 0x0

    aget v9, v3, v9

    neg-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    const/4 v10, 0x1

    aget v10, v3, v10

    neg-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1244
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1245
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1246
    move-object v0, v8

    .line 1250
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v8           #ss:Landroid/graphics/Bitmap;
    :cond_1
    if-nez v0, :cond_2

    .line 1251
    const/4 v0, 0x0

    .line 1254
    .end local v0           #Result:Landroid/graphics/Bitmap;
    :cond_2
    return-object v0

    .line 1224
    .end local v7           #requiresRotation:Z
    .restart local v0       #Result:Landroid/graphics/Bitmap;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public setEscapedList(Lcom/android/server/sec/MwActivityRecord;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 2548
    return-void
.end method

.method protected setFinalDestinationRect(Lcom/android/server/sec/MWPackageItem;)V
    .locals 5
    .parameter "freeItem"

    .prologue
    .line 1673
    if-nez p1, :cond_1

    .line 1688
    :cond_0
    :goto_0
    return-void

    .line 1676
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1677
    .local v0, packageName:Ljava/lang/String;
    const-string v2, "com.diotek.screen_capture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1679
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1680
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v1

    .line 1683
    .local v1, taskId:I
    invoke-virtual {p1, v1}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1684
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/android/server/sec/MWPackageItem;->getRestoreRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1686
    :cond_3
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setMinimum(Landroid/content/ComponentName;II)Z
    .locals 5
    .parameter "className"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1154
    const/4 v0, 0x0

    .line 1156
    .local v0, Result:Z
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 1157
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 1163
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1161
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/server/sec/MWPackageItem;->setMinimumPoint(Landroid/graphics/Point;)Z

    move-result v0

    move v1, v0

    .line 1163
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public setPermissionOff(Z)V
    .locals 5
    .parameter "permissionCheck"

    .prologue
    const/4 v4, 0x1

    .line 516
    if-eqz p1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    :try_start_0
    iget v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionLockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionLockCount:I

    .line 519
    iget v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionLockCount:I

    if-le v0, v4, :cond_0

    .line 520
    const-string v0, "MultiWindowModule"

    const-string v2, "mPermissionLockCount : there is another call"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    iput-boolean v4, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionCheck:Z

    .line 542
    :goto_0
    return-void

    .line 522
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 526
    :try_start_2
    iget v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionLockCount:I

    .line 529
    iget v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionLockCount:I

    if-gtz v0, :cond_3

    .line 530
    iget v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionLockCount:I

    if-gez v0, :cond_4

    .line 531
    const-string v0, "MultiWindowModule"

    const-string v2, "mPermissionLockCount is invalid value"

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    const-string v0, "MultiWindowModule"

    const-string v2, "mPermissionLockCount : last call stack => "

    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mLastPermissionLockCallLocation:Ljava/lang/RuntimeException;

    invoke-static {v0, v2, v3}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionCheck:Z

    .line 537
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionLockCount:I

    .line 539
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 533
    :cond_4
    :try_start_3
    iget v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionLockCount:I

    if-nez v0, :cond_2

    .line 534
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Last recycled here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mLastPermissionLockCallLocation:Ljava/lang/RuntimeException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public setPinupWindow(Landroid/content/ComponentName;Z)Z
    .locals 4
    .parameter "className"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 1330
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1331
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    .line 1332
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1333
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    .line 1344
    :cond_0
    :goto_0
    return v2

    .line 1338
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 1339
    .local v0, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v0, :cond_2

    .line 1340
    const/4 v2, 0x0

    goto :goto_0

    .line 1342
    :cond_2
    if-eqz p2, :cond_0

    .line 1343
    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    goto :goto_0
.end method

.method public setPositionOfWindow(Landroid/content/ComponentName;ILandroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;
    .locals 14
    .parameter "className"
    .parameter "taskId"
    .parameter "newRect"
    .parameter "checkMinSize"

    .prologue
    .line 2330
    const-string v10, "MultiWindowModule"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPositionOfWindow :: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "taskId ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", newRect ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    const/4 v1, 0x0

    .line 2333
    .local v1, Result:Lcom/android/server/sec/MWPackageItem;
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->left:I

    if-le v10, v11, :cond_0

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->top:I

    if-gt v10, v11, :cond_1

    .line 2334
    :cond_0
    const-string v10, "MultiWindowModule"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Rect Value is not available. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 2395
    .end local v1           #Result:Lcom/android/server/sec/MWPackageItem;
    .local v2, Result:Lcom/android/server/sec/MWPackageItem;
    :goto_0
    return-object v2

    .line 2338
    .end local v2           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v1       #Result:Lcom/android/server/sec/MWPackageItem;
    :cond_1
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 2339
    if-nez v1, :cond_2

    move-object v2, v1

    .line 2340
    .end local v1           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v2       #Result:Lcom/android/server/sec/MWPackageItem;
    goto :goto_0

    .line 2344
    .end local v2           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v1       #Result:Lcom/android/server/sec/MWPackageItem;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v7

    .line 2345
    .local v7, maxRect:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 2346
    .local v5, iDeviceWidth:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 2349
    .local v4, iDeviceHeight:I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-lt v10, v5, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v10, v4, :cond_4

    .line 2350
    :cond_3
    sget-object v10, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move/from16 v0, p2

    invoke-virtual {v1, v0, v10}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 2359
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-le v10, v5, :cond_5

    .line 2360
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v5

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2361
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v10, v4, :cond_6

    .line 2362
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2365
    :cond_6
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    if-ge v10, v11, :cond_b

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2369
    :cond_7
    :goto_1
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v7, Landroid/graphics/Rect;->top:I

    if-ge v10, v11, :cond_c

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2372
    :cond_8
    :goto_2
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v9

    .line 2373
    .local v9, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 2374
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2377
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v10

    if-nez v10, :cond_9

    .line 2378
    move/from16 v0, p2

    invoke-virtual {v1, v0, v9}, Lcom/android/server/sec/MWPackageItem;->setRestoreRect(ILandroid/graphics/Rect;)V

    .line 2379
    :cond_9
    move/from16 v0, p2

    invoke-virtual {v1, p1, v0}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast(Landroid/content/ComponentName;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v8

    .line 2380
    .local v8, obj:Lcom/android/server/sec/MWClassItem;
    if-eqz v8, :cond_d

    .line 2382
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v8}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v11

    new-instance v12, Landroid/sec/multiwindow/PreventSplitItem;

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/sec/MultiWindowModule;->getPreventSplit(Landroid/content/ComponentName;I)Z

    move-result v13

    invoke-direct {v12, v9, v13}, Landroid/sec/multiwindow/PreventSplitItem;-><init>(Landroid/graphics/Rect;Z)V

    invoke-virtual {v10, v11, v12}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/sec/multiwindow/PreventSplitItem;)V

    .line 2383
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v8}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 2384
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v8}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Lcom/android/server/sec/MultiWindowActionHandler;->actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    .line 2386
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getSubClassList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sec/MWClassItem;

    .line 2387
    .local v6, it:Lcom/android/server/sec/MWClassItem;
    if-eq v6, v8, :cond_a

    invoke-virtual {v8}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v10

    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v11

    if-ne v10, v11, :cond_a

    .line 2388
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v11

    new-instance v12, Landroid/sec/multiwindow/PreventSplitItem;

    const/4 v13, 0x0

    invoke-direct {v12, v9, v13}, Landroid/sec/multiwindow/PreventSplitItem;-><init>(Landroid/graphics/Rect;Z)V

    invoke-virtual {v10, v11, v12}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/sec/multiwindow/PreventSplitItem;)V

    .line 2389
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 2390
    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Lcom/android/server/sec/MultiWindowActionHandler;->actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    goto :goto_3

    .line 2366
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #it:Lcom/android/server/sec/MWClassItem;
    .end local v8           #obj:Lcom/android/server/sec/MWClassItem;
    .end local v9           #rect:Landroid/graphics/Rect;
    :cond_b
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v5, v11

    if-le v10, v11, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v5, v10

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_1

    .line 2370
    :cond_c
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v4, v11

    if-le v10, v11, :cond_8

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v4, v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_2

    .restart local v9       #rect:Landroid/graphics/Rect;
    :cond_d
    move-object v2, v1

    .line 2395
    .end local v1           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v2       #Result:Lcom/android/server/sec/MWPackageItem;
    goto/16 :goto_0
.end method

.method public setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;
    .locals 15
    .parameter "className"
    .parameter "newRect"
    .parameter "checkMinSize"

    .prologue
    .line 2256
    const-string v11, "MultiWindowModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setPositionOfWindow :: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", newRect ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    const/4 v1, 0x0

    .line 2259
    .local v1, Result:Lcom/android/server/sec/MWPackageItem;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-le v11, v12, :cond_0

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    if-gt v11, v12, :cond_1

    .line 2260
    :cond_0
    const-string v11, "MultiWindowModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Rect Value is not available. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 2321
    .end local v1           #Result:Lcom/android/server/sec/MWPackageItem;
    .local v2, Result:Lcom/android/server/sec/MWPackageItem;
    :goto_0
    return-object v2

    .line 2264
    .end local v2           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v1       #Result:Lcom/android/server/sec/MWPackageItem;
    :cond_1
    iget-object v11, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 2265
    if-nez v1, :cond_2

    move-object v2, v1

    .line 2266
    .end local v1           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v2       #Result:Lcom/android/server/sec/MWPackageItem;
    goto :goto_0

    .line 2268
    .end local v2           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v1       #Result:Lcom/android/server/sec/MWPackageItem;
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v10

    .line 2270
    .local v10, taskId:I
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v7

    .line 2271
    .local v7, maxRect:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 2272
    .local v5, iDeviceWidth:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 2275
    .local v4, iDeviceHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-lt v11, v5, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v11, v4, :cond_4

    .line 2276
    :cond_3
    sget-object v11, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v1, v10, v11}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 2285
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-le v11, v5, :cond_5

    .line 2286
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v5

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 2287
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-le v11, v4, :cond_6

    .line 2288
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 2291
    :cond_6
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    if-ge v11, v12, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2295
    :cond_7
    :goto_1
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    iget v12, v7, Landroid/graphics/Rect;->top:I

    if-ge v11, v12, :cond_c

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    iget v12, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2298
    :cond_8
    :goto_2
    invoke-virtual {v1, v10}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v9

    .line 2299
    .local v9, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 2300
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 2303
    invoke-virtual {v1, v10}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v11

    if-nez v11, :cond_9

    .line 2304
    invoke-virtual {v1, v10, v9}, Lcom/android/server/sec/MWPackageItem;->setRestoreRect(ILandroid/graphics/Rect;)V

    .line 2305
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v10}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast(Landroid/content/ComponentName;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v8

    .line 2306
    .local v8, obj:Lcom/android/server/sec/MWClassItem;
    if-eqz v8, :cond_d

    .line 2308
    iget-object v11, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v8}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v12

    new-instance v13, Landroid/sec/multiwindow/PreventSplitItem;

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v10}, Lcom/android/server/sec/MultiWindowModule;->getPreventSplit(Landroid/content/ComponentName;I)Z

    move-result v14

    invoke-direct {v13, v9, v14}, Landroid/sec/multiwindow/PreventSplitItem;-><init>(Landroid/graphics/Rect;Z)V

    invoke-virtual {v11, v12, v13}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/sec/multiwindow/PreventSplitItem;)V

    .line 2309
    iget-object v11, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v8}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 2310
    iget-object v11, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v8}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Lcom/android/server/sec/MultiWindowActionHandler;->actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    .line 2312
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getSubClassList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sec/MWClassItem;

    .line 2313
    .local v6, it:Lcom/android/server/sec/MWClassItem;
    if-eq v6, v8, :cond_a

    invoke-virtual {v8}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v11

    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v12

    if-ne v11, v12, :cond_a

    .line 2314
    iget-object v11, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v12

    new-instance v13, Landroid/sec/multiwindow/PreventSplitItem;

    const/4 v14, 0x0

    invoke-direct {v13, v9, v14}, Landroid/sec/multiwindow/PreventSplitItem;-><init>(Landroid/graphics/Rect;Z)V

    invoke-virtual {v11, v12, v13}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/sec/multiwindow/PreventSplitItem;)V

    .line 2315
    iget-object v11, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 2316
    iget-object v11, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Lcom/android/server/sec/MultiWindowActionHandler;->actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    goto :goto_3

    .line 2292
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #it:Lcom/android/server/sec/MWClassItem;
    .end local v8           #obj:Lcom/android/server/sec/MWClassItem;
    .end local v9           #rect:Landroid/graphics/Rect;
    :cond_b
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v12, v5, v12

    if-le v11, v12, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v5, v11

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_1

    .line 2296
    :cond_c
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v12, v4, v12

    if-le v11, v12, :cond_8

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v12, v4, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_2

    .restart local v9       #rect:Landroid/graphics/Rect;
    :cond_d
    move-object v2, v1

    .line 2321
    .end local v1           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v2       #Result:Lcom/android/server/sec/MWPackageItem;
    goto/16 :goto_0
.end method

.method protected setToMax(Landroid/content/ComponentName;)Z
    .locals 8
    .parameter "className"

    .prologue
    .line 1696
    const/4 v0, 0x0

    .line 1697
    .local v0, Result:Z
    const-string v5, "MultiWindowModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setToMax : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 1700
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 1724
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1703
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v4

    .line 1705
    .local v4, taskId:I
    invoke-virtual {v2, v4}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1706
    const-string v5, "MultiWindowModule"

    const-string v6, "[minimize] Has already been applied."

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const/4 v0, 0x1

    move v1, v0

    .line 1708
    .restart local v1       #Result:I
    goto :goto_0

    .line 1712
    .end local v1           #Result:I
    :cond_1
    sget-object v5, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 1716
    invoke-virtual {v2, v4}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1717
    invoke-virtual {v2, v4}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/sec/MWPackageItem;->setRestoreRect(ILandroid/graphics/Rect;)V

    .line 1719
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 1720
    .local v3, mItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v3, :cond_3

    .line 1721
    const/4 v0, 0x1

    :cond_3
    move v1, v0

    .line 1724
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method protected setToMax(Landroid/content/ComponentName;I)Z
    .locals 7
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 1732
    const/4 v0, 0x0

    .line 1733
    .local v0, Result:Z
    const-string v4, "MultiWindowModule"

    const-string v5, "setToMax"

    const-string v6, ""

    invoke-static {v4, v5, p1, v6}, Landroid/sec/multiwindow/MWlog;->s(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)I

    .line 1734
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 1735
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 1758
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1746
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    sget-object v4, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v2, p2, v4}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 1750
    invoke-virtual {v2, p2}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1751
    invoke-virtual {v2, p2}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lcom/android/server/sec/MWPackageItem;->setRestoreRect(ILandroid/graphics/Rect;)V

    .line 1753
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;ILandroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 1754
    .local v3, mItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v3, :cond_2

    .line 1755
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 1758
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public start(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, Result:Z
    const/4 v1, 0x0

    .line 216
    .local v1, item:Lcom/android/server/sec/MWPackageItem;
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 218
    if-nez v1, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/sec/MultiWindowList;->getNewItemInstance(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 221
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    monitor-enter v3

    .line 222
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/sec/MultiWindowList;->addNewItem(Lcom/android/server/sec/MWPackageItem;)Z

    .line 223
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    monitor-enter v3

    .line 227
    :try_start_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->add(Landroid/content/Intent;)Z

    .line 228
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->runNextMultiWindow()V

    .line 231
    const/4 v0, 0x1

    .line 233
    return v0

    .line 223
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 228
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public startMultiWindow(Landroid/content/ComponentName;IZ)Z
    .locals 7
    .parameter "className"
    .parameter "taskId"
    .parameter "isMiniMode"

    .prologue
    const/4 v4, 0x0

    .line 729
    const/4 v0, 0x1

    .line 731
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 732
    .local v2, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 733
    .local v1, obj:Lcom/android/server/sec/MWPackageItem;
    const-string v5, "MultiWindowModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startMultiWindow : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " obj != null : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", isRunning = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    if-eqz v1, :cond_0

    .line 735
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 736
    const-string v3, "MultiWindowModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEscapedList.containsKey("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    :goto_1
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/sec/MultiWindowModule;->rePositionOfWindow(Landroid/content/ComponentName;IZ)Z

    .line 763
    :cond_0
    return v0

    :cond_1
    move v3, v4

    .line 733
    goto :goto_0

    .line 740
    :cond_2
    if-eqz p3, :cond_3

    .line 741
    const-string v3, "MultiWindowModule"

    const-string v5, "start MiniMode"

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->restore(Landroid/content/ComponentName;I)Z

    goto :goto_1

    .line 745
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, p2}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 746
    const-string v3, "MultiWindowModule"

    const-string v5, "start RestoreRect"

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->restore(Landroid/content/ComponentName;I)Z

    goto :goto_1

    .line 750
    :cond_4
    const-string v3, "MultiWindowModule"

    const-string v5, "start FullScreen"

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->setToMax(Landroid/content/ComponentName;I)Z

    goto :goto_1
.end method

.method public startMultiWindow(Landroid/content/ComponentName;Z)Z
    .locals 8
    .parameter "className"
    .parameter "isMiniMode"

    .prologue
    const/4 v5, 0x0

    .line 686
    const/4 v0, 0x1

    .line 688
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 690
    .local v1, obj:Lcom/android/server/sec/MWPackageItem;
    const-string v6, "MultiWindowModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startMultiWindow : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " obj != null : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", isRunning = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    if-eqz v1, :cond_0

    .line 692
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 693
    const-string v4, "MultiWindowModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mEscapedList.containsKey("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :goto_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/sec/MultiWindowModule;->rePositionOfWindow(Landroid/content/ComponentName;Z)Z

    .line 721
    :cond_0
    return v0

    :cond_1
    move v4, v5

    .line 690
    goto :goto_0

    .line 697
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v3

    .line 698
    .local v3, taskId:I
    if-eqz p2, :cond_3

    .line 699
    const-string v4, "MultiWindowModule"

    const-string v6, "start MiniMode"

    invoke-static {v4, v6}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->restore(Landroid/content/ComponentName;)Z

    goto :goto_1

    .line 703
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v3}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 704
    const-string v4, "MultiWindowModule"

    const-string v6, "start RestoreRect"

    invoke-static {v4, v6}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->restore(Landroid/content/ComponentName;)Z

    goto :goto_1

    .line 708
    :cond_4
    const-string v4, "MultiWindowModule"

    const-string v6, "start FullScreen"

    invoke-static {v4, v6}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->setToMax(Landroid/content/ComponentName;)Z

    goto :goto_1
.end method
