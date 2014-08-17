.class public final Landroid/sec/multiwindow/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"

# interfaces
.implements Landroid/sec/multiwindow/IMultiWindowManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/MultiWindowManager$1;,
        Landroid/sec/multiwindow/MultiWindowManager$_handler;,
        Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    }
.end annotation


# static fields
.field private static final EX_CLASS_NAME:Ljava/lang/String; = "mwExtraClassName"

.field private static final EX_PACKAGE_NAME:Ljava/lang/String; = "mwExtraPackageName"

.field public static final TAG:Ljava/lang/String; = "MultiWindowManager"

.field private static isUseMultiWindow:Ljava/lang/Boolean;

.field private static mActionPair:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/sec/multiwindow/MultiWindowKey;",
            "Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelf:Landroid/sec/multiwindow/MultiWindowManager;

.field private static mService:Landroid/sec/multiwindow/IMultiWindowService;


# instance fields
.field private mContext:Landroid/content/Context;

.field mwADialog:Landroid/sec/mwdialog/MWAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    .line 71
    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->isUseMultiWindow:Ljava/lang/Boolean;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mActionPair:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1563
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    .line 102
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method static synthetic access$100()Landroid/sec/multiwindow/IMultiWindowService;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 110
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindowManager;->readConfig(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    .line 113
    :cond_0
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    if-nez v0, :cond_1

    .line 114
    if-eqz p0, :cond_1

    .line 115
    const-string/jumbo v0, "multiwindow"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/MultiWindowManager;

    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    .line 116
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    iput-object p0, v0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    .line 127
    :cond_1
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    goto :goto_0
.end method

.method private static getService()Landroid/sec/multiwindow/IMultiWindowService;
    .locals 2

    .prologue
    .line 86
    sget-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    if-eqz v1, :cond_0

    .line 87
    sget-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    .line 93
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 90
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "multiwindow"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 92
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v1

    sput-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    .line 93
    sget-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    goto :goto_0
.end method

.method private initFreestyleModeLayout(Landroid/app/Activity;)Z
    .locals 22
    .parameter "activity"

    .prologue
    .line 1305
    const/4 v13, 0x0

    .line 1307
    .local v13, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 1309
    .local v2, componentName:Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 1310
    .local v11, myWindow:Landroid/view/Window;
    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .line 1313
    .local v8, myDecoView:Landroid/view/View;
    const-string v19, "MultiWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[sendResumeAction]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    const/4 v7, 0x0

    .line 1316
    .local v7, mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getTaskId()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v2, v1}, Landroid/sec/multiwindow/IMultiWindowService;->changFocus(Landroid/content/ComponentName;I)V

    .line 1317
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getTaskId()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v2, v1}, Landroid/sec/multiwindow/IMultiWindowService;->getPositionOfWindowWithTaskId(Landroid/content/ComponentName;I)Landroid/sec/multiwindow/MultiWindowObject;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 1327
    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 1328
    .local v9, myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    if-nez v7, :cond_0

    .line 1329
    const-string v19, "MultiWindowManager"

    const-string/jumbo v20, "onResumeAction - mwObj = null  is not multiwindow"

    invoke-static/range {v19 .. v20}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v13

    .line 1403
    .end local v9           #myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    .end local v13           #result:Z
    .local v14, result:I
    :goto_0
    return v14

    .line 1318
    .end local v14           #result:I
    .restart local v13       #result:Z
    :catch_0
    move-exception v3

    .line 1319
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v19, "MultiWindowManager"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v14, v13

    .line 1320
    .restart local v14       #result:I
    goto :goto_0

    .line 1321
    .end local v3           #e:Ljava/lang/NullPointerException;
    .end local v14           #result:I
    :catch_1
    move-exception v4

    .line 1322
    .local v4, e3:Landroid/os/RemoteException;
    const-string v19, "MultiWindowManager"

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1323
    const-string v19, "MultiWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onResumeAction - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Error : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v13

    .line 1324
    .restart local v14       #result:I
    goto :goto_0

    .line 1334
    .end local v4           #e3:Landroid/os/RemoteException;
    .end local v14           #result:I
    .restart local v9       #myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const v19, 0x10203d6

    :try_start_1
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 1335
    .local v16, windowContentFrame:Landroid/widget/LinearLayout;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1336
    const v19, 0x10203d7

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 1338
    .local v12, overWrapFrame:Landroid/widget/LinearLayout;
    const v19, 0x10203dd

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    .line 1339
    .local v17, windowResize:Landroid/widget/ImageButton;
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1340
    const/4 v6, 0x0

    .line 1341
    .local v6, minimizeButton:Landroid/widget/ImageButton;
    const/4 v5, 0x0

    .line 1342
    .local v5, maximizeButton:Landroid/widget/ImageButton;
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1343
    const v19, 0x10203de

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    .line 1344
    .local v18, windowTitleBar:Landroid/widget/RelativeLayout;
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1346
    const v19, 0x10203e2

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #minimizeButton:Landroid/widget/ImageButton;
    check-cast v6, Landroid/widget/ImageButton;

    .line 1347
    .restart local v6       #minimizeButton:Landroid/widget/ImageButton;
    const v19, 0x10203e1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #maximizeButton:Landroid/widget/ImageButton;
    check-cast v5, Landroid/widget/ImageButton;

    .line 1351
    .end local v18           #windowTitleBar:Landroid/widget/RelativeLayout;
    .restart local v5       #maximizeButton:Landroid/widget/ImageButton;
    :cond_1
    invoke-virtual {v7}, Landroid/sec/multiwindow/MultiWindowObject;->isFullScreen()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1352
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1353
    const v19, 0x1080547

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1354
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    .line 1355
    const/16 v19, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1356
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1357
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1358
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1388
    .end local v5           #maximizeButton:Landroid/widget/ImageButton;
    .end local v6           #minimizeButton:Landroid/widget/ImageButton;
    .end local v12           #overWrapFrame:Landroid/widget/LinearLayout;
    .end local v16           #windowContentFrame:Landroid/widget/LinearLayout;
    .end local v17           #windowResize:Landroid/widget/ImageButton;
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/sec/multiwindow/MultiWindowObject;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 1390
    .local v10, myRect:Landroid/graphics/Rect;
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1391
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1392
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1393
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1394
    invoke-virtual {v8}, Landroid/view/View;->requestLayout()V

    .line 1395
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 1397
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/WindowManagerImpl;->getRootView(Landroid/view/View;)Landroid/view/ViewRootImpl;

    move-result-object v15

    .line 1398
    .local v15, viewRoot:Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_3

    .line 1399
    invoke-virtual {v15, v9}, Landroid/view/ViewRootImpl;->forceRelayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 1400
    const/4 v13, 0x1

    :cond_3
    move v14, v13

    .line 1403
    .restart local v14       #result:I
    goto/16 :goto_0

    .line 1360
    .end local v10           #myRect:Landroid/graphics/Rect;
    .end local v14           #result:I
    .end local v15           #viewRoot:Landroid/view/ViewRootImpl;
    .restart local v5       #maximizeButton:Landroid/widget/ImageButton;
    .restart local v6       #minimizeButton:Landroid/widget/ImageButton;
    .restart local v12       #overWrapFrame:Landroid/widget/LinearLayout;
    .restart local v16       #windowContentFrame:Landroid/widget/LinearLayout;
    .restart local v17       #windowResize:Landroid/widget/ImageButton;
    :cond_4
    :try_start_2
    invoke-virtual {v7}, Landroid/sec/multiwindow/MultiWindowObject;->hasFixedSizeList()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual {v7}, Landroid/sec/multiwindow/MultiWindowObject;->getFixedSizeList()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 1361
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1362
    const v19, 0x108053a

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1363
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    .line 1364
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    const/high16 v20, 0x10

    or-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1365
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1367
    const/16 v19, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1368
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1369
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1370
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 1385
    .end local v5           #maximizeButton:Landroid/widget/ImageButton;
    .end local v6           #minimizeButton:Landroid/widget/ImageButton;
    .end local v12           #overWrapFrame:Landroid/widget/LinearLayout;
    .end local v16           #windowContentFrame:Landroid/widget/LinearLayout;
    .end local v17           #windowResize:Landroid/widget/ImageButton;
    :catch_2
    move-exception v19

    goto/16 :goto_1

    .line 1373
    .restart local v5       #maximizeButton:Landroid/widget/ImageButton;
    .restart local v6       #minimizeButton:Landroid/widget/ImageButton;
    .restart local v12       #overWrapFrame:Landroid/widget/LinearLayout;
    .restart local v16       #windowContentFrame:Landroid/widget/LinearLayout;
    .restart local v17       #windowResize:Landroid/widget/ImageButton;
    :cond_5
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1374
    const v19, 0x108053a

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1375
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    .line 1376
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    const/high16 v20, 0x10

    or-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1377
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1379
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1380
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1381
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1382
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1
.end method

.method private initSplitMode(Landroid/app/Activity;)Z
    .locals 26
    .parameter "activity"

    .prologue
    .line 1149
    const/16 v17, 0x0

    .line 1151
    .local v17, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1153
    .local v3, componentName:Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 1154
    .local v13, myWindow:Landroid/view/Window;
    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    .line 1157
    .local v10, myDecoView:Landroid/view/View;
    const-string v23, "MultiWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[sendResumeAction]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", activity TASK ID : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getTaskId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v9, 0x0

    .line 1160
    .local v9, mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getTaskId()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v0, v3, v1}, Landroid/sec/multiwindow/IMultiWindowService;->changFocus(Landroid/content/ComponentName;I)V

    .line 1161
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getTaskId()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v0, v3, v1}, Landroid/sec/multiwindow/IMultiWindowService;->getPositionOfWindowWithTaskId(Landroid/content/ComponentName;I)Landroid/sec/multiwindow/MultiWindowObject;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 1171
    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 1172
    .local v11, myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    if-nez v9, :cond_0

    .line 1173
    const-string v23, "MultiWindowManager"

    const-string/jumbo v24, "onResumeAction - mwObj = null  is not multiwindow"

    invoke-static/range {v23 .. v24}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v17

    .line 1297
    .end local v11           #myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    .end local v17           #result:Z
    .local v18, result:I
    :goto_0
    return v18

    .line 1162
    .end local v18           #result:I
    .restart local v17       #result:Z
    :catch_0
    move-exception v5

    .line 1163
    .local v5, e3:Landroid/os/RemoteException;
    const-string v23, "MultiWindowManager"

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v5}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1164
    const-string v23, "MultiWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onResumeAction - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Error : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v17

    .line 1165
    .restart local v18       #result:I
    goto :goto_0

    .line 1166
    .end local v5           #e3:Landroid/os/RemoteException;
    .end local v18           #result:I
    :catch_1
    move-exception v4

    .line 1167
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v23, "MultiWindowManager"

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v4}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v18, v17

    .line 1168
    .restart local v18       #result:I
    goto :goto_0

    .line 1179
    .end local v4           #e:Ljava/lang/NullPointerException;
    .end local v18           #result:I
    .restart local v11       #myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const v23, 0x10203d6

    :try_start_1
    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 1180
    .local v21, windowContentFrame:Landroid/widget/LinearLayout;
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1181
    const v23, 0x10203d7

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1185
    .local v15, overWrapFrame:Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    .line 1186
    .local v8, minimizeButton:Landroid/widget/ImageButton;
    const/4 v7, 0x0

    .line 1187
    .local v7, maximizeButton:Landroid/widget/ImageButton;
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1188
    const v23, 0x10203de

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 1189
    .local v22, windowTitleBar:Landroid/widget/RelativeLayout;
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1191
    const v23, 0x10203e2

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #minimizeButton:Landroid/widget/ImageButton;
    check-cast v8, Landroid/widget/ImageButton;

    .line 1192
    .restart local v8       #minimizeButton:Landroid/widget/ImageButton;
    const v23, 0x10203e1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #maximizeButton:Landroid/widget/ImageButton;
    check-cast v7, Landroid/widget/ImageButton;

    .line 1196
    .end local v22           #windowTitleBar:Landroid/widget/RelativeLayout;
    .restart local v7       #maximizeButton:Landroid/widget/ImageButton;
    :cond_1
    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindowObject;->isFullScreen()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1198
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1199
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    .line 1201
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1202
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1203
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1233
    .end local v7           #maximizeButton:Landroid/widget/ImageButton;
    .end local v8           #minimizeButton:Landroid/widget/ImageButton;
    .end local v15           #overWrapFrame:Landroid/widget/LinearLayout;
    .end local v21           #windowContentFrame:Landroid/widget/LinearLayout;
    :cond_2
    :goto_1
    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindowObject;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1235
    .local v12, myRect:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getRotation()I

    move-result v14

    .line 1237
    .local v14, orientation:I
    const v23, 0x10203d8

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 1238
    .local v6, l:Landroid/widget/ImageButton;
    const v23, 0x10203d9

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    .line 1239
    .local v19, t:Landroid/widget/ImageButton;
    const v23, 0x10203db

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageButton;

    .line 1240
    .local v16, r:Landroid/widget/ImageButton;
    const v23, 0x10203da

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 1242
    .local v2, b:Landroid/widget/ImageButton;
    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindowObject;->isFullScreen()Z

    move-result v23

    if-nez v23, :cond_9

    .line 1243
    rem-int/lit8 v23, v14, 0x2

    if-nez v23, :cond_7

    .line 1244
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 1245
    const/16 v23, 0x2

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->splitMode:I

    .line 1246
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1247
    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1248
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1249
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1272
    :goto_2
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1273
    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1274
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1275
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1288
    :goto_3
    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 1289
    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    .line 1291
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/view/WindowManagerImpl;->getRootView(Landroid/view/View;)Landroid/view/ViewRootImpl;

    move-result-object v20

    .line 1292
    .local v20, viewRoot:Landroid/view/ViewRootImpl;
    if-eqz v20, :cond_3

    .line 1293
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/ViewRootImpl;->forceRelayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 1294
    const/16 v17, 0x1

    :cond_3
    move/from16 v18, v17

    .line 1297
    .restart local v18       #result:I
    goto/16 :goto_0

    .line 1205
    .end local v2           #b:Landroid/widget/ImageButton;
    .end local v6           #l:Landroid/widget/ImageButton;
    .end local v12           #myRect:Landroid/graphics/Rect;
    .end local v14           #orientation:I
    .end local v16           #r:Landroid/widget/ImageButton;
    .end local v18           #result:I
    .end local v19           #t:Landroid/widget/ImageButton;
    .end local v20           #viewRoot:Landroid/view/ViewRootImpl;
    .restart local v7       #maximizeButton:Landroid/widget/ImageButton;
    .restart local v8       #minimizeButton:Landroid/widget/ImageButton;
    .restart local v15       #overWrapFrame:Landroid/widget/LinearLayout;
    .restart local v21       #windowContentFrame:Landroid/widget/LinearLayout;
    :cond_4
    :try_start_2
    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindowObject;->hasFixedSizeList()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindowObject;->getFixedSizeList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 1206
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1209
    const/16 v23, 0x2

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    .line 1210
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x20

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1213
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1214
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1215
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 1230
    .end local v7           #maximizeButton:Landroid/widget/ImageButton;
    .end local v8           #minimizeButton:Landroid/widget/ImageButton;
    .end local v15           #overWrapFrame:Landroid/widget/LinearLayout;
    .end local v21           #windowContentFrame:Landroid/widget/LinearLayout;
    :catch_2
    move-exception v23

    goto/16 :goto_1

    .line 1218
    .restart local v7       #maximizeButton:Landroid/widget/ImageButton;
    .restart local v8       #minimizeButton:Landroid/widget/ImageButton;
    .restart local v15       #overWrapFrame:Landroid/widget/LinearLayout;
    .restart local v21       #windowContentFrame:Landroid/widget/LinearLayout;
    :cond_5
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1221
    const/16 v23, 0x4

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    .line 1222
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x20

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1225
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1226
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1227
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1251
    .end local v7           #maximizeButton:Landroid/widget/ImageButton;
    .end local v8           #minimizeButton:Landroid/widget/ImageButton;
    .end local v15           #overWrapFrame:Landroid/widget/LinearLayout;
    .end local v21           #windowContentFrame:Landroid/widget/LinearLayout;
    .restart local v2       #b:Landroid/widget/ImageButton;
    .restart local v6       #l:Landroid/widget/ImageButton;
    .restart local v12       #myRect:Landroid/graphics/Rect;
    .restart local v14       #orientation:I
    .restart local v16       #r:Landroid/widget/ImageButton;
    .restart local v19       #t:Landroid/widget/ImageButton;
    :cond_6
    const/16 v23, 0x4

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->splitMode:I

    .line 1252
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1253
    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1254
    const/16 v23, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1255
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 1258
    :cond_7
    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 1259
    const/16 v23, 0x2

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->splitMode:I

    .line 1260
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1261
    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1262
    const/16 v23, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1263
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 1265
    :cond_8
    const/16 v23, 0x4

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->splitMode:I

    .line 1266
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1267
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1268
    const/16 v23, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1269
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 1277
    :cond_9
    const/16 v23, 0x6

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->splitMode:I

    .line 1278
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1279
    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1280
    const/16 v23, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1281
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1282
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1283
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1284
    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1285
    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_3
.end method

.method private static isMultiWindowServiceEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 901
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 911
    :goto_0
    return v1

    .line 905
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/multiwindow/IMultiWindowService;->isMultiWindowServiceEnabled()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 909
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 910
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mode remote error (hasSpliteMode): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isMultiWindowServiceEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 921
    const/4 v0, 0x0

    .line 923
    .local v0, result:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 936
    .end local v0           #result:Z
    .local v1, result:I
    :goto_0
    return v1

    .line 926
    .end local v1           #result:I
    .restart local v0       #result:Z
    :cond_0
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindowManager;->readConfig(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    .line 927
    .restart local v1       #result:I
    goto :goto_0

    .line 934
    .end local v1           #result:I
    :cond_1
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindowServiceEnabled()Z

    move-result v0

    move v1, v0

    .line 936
    .restart local v1       #result:I
    goto :goto_0
.end method

.method private static readConfig(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 940
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->isUseMultiWindow:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 941
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->isUseMultiWindow:Ljava/lang/Boolean;

    .line 942
    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readConfig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/sec/multiwindow/MultiWindowManager;->isUseMultiWindow:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_0
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->isUseMultiWindow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public arrangeWindows(I)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 1019
    const/4 v1, 0x0

    .line 1021
    .local v1, result:Z
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    move v2, v1

    .line 1033
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 1025
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->arrangeWindows(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 1033
    .restart local v2       #result:I
    goto :goto_0

    .line 1026
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 1027
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 1028
    .restart local v2       #result:I
    goto :goto_0

    .line 1029
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 1030
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 1031
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public capture(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "componentName"

    .prologue
    .line 856
    const/4 v1, 0x0

    .line 858
    .local v1, result:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v3, p1, v4}, Landroid/sec/multiwindow/IMultiWindowService;->capture(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 866
    .end local v1           #result:Landroid/graphics/Bitmap;
    .local v2, result:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 859
    .end local v2           #result:Landroid/graphics/Bitmap;
    .restart local v1       #result:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 860
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 861
    .end local v1           #result:Landroid/graphics/Bitmap;
    .restart local v2       #result:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 862
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/graphics/Bitmap;
    .restart local v1       #result:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    .line 863
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 864
    .end local v1           #result:Landroid/graphics/Bitmap;
    .restart local v2       #result:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public exchangeSplitScreens()Z
    .locals 5

    .prologue
    .line 833
    const/4 v1, 0x0

    .line 834
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_0

    .line 836
    const-string v3, "MultiWindowManager"

    const-string v4, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 849
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 841
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->exchangeSplitScreens()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 849
    .restart local v2       #result:I
    goto :goto_0

    .line 842
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 843
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 844
    .restart local v2       #result:I
    goto :goto_0

    .line 845
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 846
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 847
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public finishAllWindow()Z
    .locals 5

    .prologue
    .line 578
    const/4 v1, 0x0

    .line 580
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->finishAllWindow()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 588
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 581
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 583
    .restart local v2       #result:I
    goto :goto_0

    .line 584
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 585
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 586
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public finishAppPid(I)Z
    .locals 5
    .parameter "pid"

    .prologue
    .line 593
    const/4 v1, 0x0

    .line 595
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->finishAppPid(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 603
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 596
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 597
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 598
    .restart local v2       #result:I
    goto :goto_0

    .line 599
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 600
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 601
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public getAction(Landroid/sec/multiwindow/MultiWindowKey;)Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    .locals 2
    .parameter "key"

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    sget-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mActionPair:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    sget-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mActionPair:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    check-cast v0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    .line 82
    .restart local v0       #action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    :goto_0
    return-object v0

    .line 79
    :cond_0
    new-instance v0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    .end local v0           #action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;-><init>(Landroid/sec/multiwindow/MultiWindowManager;Landroid/app/Activity;)V

    .line 80
    .restart local v0       #action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    sget-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mActionPair:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getMultiLayout()Z
    .locals 5

    .prologue
    .line 886
    const/4 v1, 0x0

    .line 888
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getMultiLayout()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 896
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 889
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 890
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 891
    .restart local v2       #result:I
    goto :goto_0

    .line 892
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 893
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 894
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public getMultiWindowList()Ljava/util/List;
    .locals 7
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
    .line 332
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v0, 0x0

    .line 336
    .local v0, Items:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowService;->getMultiWindowList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    .line 347
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 355
    :goto_0
    return-object v3

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 340
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 341
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMultiWindowList error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 348
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 349
    .local v2, e1:Ljava/lang/Exception;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMultiWindowList error1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 352
    .end local v2           #e1:Ljava/lang/Exception;
    :cond_0
    const-string v4, "MultiWindowManager"

    const-string v5, "getMultiWindowList is null!"

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMultiWindowList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .parameter "owner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    const/4 v1, 0x0

    .line 421
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->getMultiWindowListOwner(Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 429
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_0
    return-object v2

    .line 422
    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v0

    .line 423
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 424
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0

    .line 425
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_1
    move-exception v0

    .line 426
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 427
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0
.end method

.method public getMultiWindowListOwnerList()Ljava/util/List;
    .locals 5
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
    .line 433
    const/4 v1, 0x0

    .line 435
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getMultiWindowListOwnerList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 443
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_0
    return-object v2

    .line 436
    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 438
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0

    .line 439
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_1
    move-exception v0

    .line 440
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 441
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0
.end method

.method public getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;
    .locals 5

    .prologue
    .line 151
    sget-object v1, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    .line 153
    .local v1, result:Landroid/sec/multiwindow/MultiWindowType;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getMultiWindowType()I

    move-result v3

    invoke-static {v3}, Landroid/sec/multiwindow/MultiWindowType;->getValidType(I)Landroid/sec/multiwindow/MultiWindowType;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 161
    .end local v1           #result:Landroid/sec/multiwindow/MultiWindowType;
    .local v2, result:Landroid/sec/multiwindow/MultiWindowType;
    :goto_0
    return-object v2

    .line 154
    .end local v2           #result:Landroid/sec/multiwindow/MultiWindowType;
    .restart local v1       #result:Landroid/sec/multiwindow/MultiWindowType;
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 156
    .end local v1           #result:Landroid/sec/multiwindow/MultiWindowType;
    .restart local v2       #result:Landroid/sec/multiwindow/MultiWindowType;
    goto :goto_0

    .line 157
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/sec/multiwindow/MultiWindowType;
    .restart local v1       #result:Landroid/sec/multiwindow/MultiWindowType;
    :catch_1
    move-exception v0

    .line 158
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 159
    .end local v1           #result:Landroid/sec/multiwindow/MultiWindowType;
    .restart local v2       #result:Landroid/sec/multiwindow/MultiWindowType;
    goto :goto_0
.end method

.method public getPinupWindow()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 687
    const/4 v1, 0x0

    .line 688
    .local v1, result:Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_0

    move-object v2, v1

    .line 700
    .end local v1           #result:Landroid/content/ComponentName;
    .local v2, result:Landroid/content/ComponentName;
    :goto_0
    return-object v2

    .line 692
    .end local v2           #result:Landroid/content/ComponentName;
    .restart local v1       #result:Landroid/content/ComponentName;
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getPinupWindow()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 700
    .end local v1           #result:Landroid/content/ComponentName;
    .restart local v2       #result:Landroid/content/ComponentName;
    goto :goto_0

    .line 693
    .end local v2           #result:Landroid/content/ComponentName;
    .restart local v1       #result:Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 694
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 695
    .end local v1           #result:Landroid/content/ComponentName;
    .restart local v2       #result:Landroid/content/ComponentName;
    goto :goto_0

    .line 696
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/content/ComponentName;
    .restart local v1       #result:Landroid/content/ComponentName;
    :catch_1
    move-exception v0

    .line 697
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 698
    .end local v1           #result:Landroid/content/ComponentName;
    .restart local v2       #result:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public getResumedWindow()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 563
    const/4 v1, 0x0

    .line 565
    .local v1, result:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getResumedWindow()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 573
    .end local v1           #result:Landroid/content/ComponentName;
    .local v2, result:Landroid/content/ComponentName;
    :goto_0
    return-object v2

    .line 566
    .end local v2           #result:Landroid/content/ComponentName;
    .restart local v1       #result:Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 567
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 568
    .end local v1           #result:Landroid/content/ComponentName;
    .restart local v2       #result:Landroid/content/ComponentName;
    goto :goto_0

    .line 569
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/content/ComponentName;
    .restart local v1       #result:Landroid/content/ComponentName;
    :catch_1
    move-exception v0

    .line 570
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 571
    .end local v1           #result:Landroid/content/ComponentName;
    .restart local v2       #result:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public getRunningWindowList()Ljava/util/List;
    .locals 7
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
    .line 463
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .line 467
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowService;->getRunningWindowList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 476
    if-eqz v2, :cond_0

    .line 478
    :try_start_1
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 486
    :goto_0
    return-object v3

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 471
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 472
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRunningWindowList error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 479
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 480
    .local v1, e1:Ljava/lang/Exception;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRunningWindowList error1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 483
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_0
    const-string v4, "MultiWindowManager"

    const-string v5, "getRunningWindowList is null!"

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSplitList()Ljava/util/List;
    .locals 5
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
    .line 506
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getSplitList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 516
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v2, result:Ljava/lang/Object;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_0
    return-object v2

    .line 509
    .end local v2           #result:Ljava/lang/Object;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v0

    .line 510
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 511
    .restart local v2       #result:Ljava/lang/Object;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0

    .line 512
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Ljava/lang/Object;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_1
    move-exception v0

    .line 513
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 514
    .restart local v2       #result:Ljava/lang/Object;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0
.end method

.method public getVisibleWindowList()Ljava/util/List;
    .locals 7
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
    .line 521
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .line 525
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowService;->getVisibleWindowList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 534
    if-eqz v2, :cond_0

    .line 536
    :try_start_1
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 543
    :goto_0
    return-object v3

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 529
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 530
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVisibleWindowList error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 537
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 538
    .local v1, e1:Ljava/lang/Exception;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVisibleWindowList error1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 541
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_0
    const-string v4, "MultiWindowManager"

    const-string v5, "getVisibleWindowList is null!"

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;
    .locals 2
    .parameter "componentName"

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/Intent;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v1

    return-object v1
.end method

.method public getWindowInstance(Landroid/content/Intent;)Landroid/sec/multiwindow/IMultiWindow;
    .locals 7
    .parameter "intent"

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 175
    .local v1, res:Landroid/sec/multiwindow/MultiWindow;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 176
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    move-object v2, v1

    .line 190
    .end local v1           #res:Landroid/sec/multiwindow/MultiWindow;
    .local v2, res:Landroid/sec/multiwindow/MultiWindow;
    :goto_0
    return-object v2

    .line 180
    .end local v2           #res:Landroid/sec/multiwindow/MultiWindow;
    .restart local v1       #res:Landroid/sec/multiwindow/MultiWindow;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 181
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unregistered is a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 182
    .end local v1           #res:Landroid/sec/multiwindow/MultiWindow;
    .restart local v2       #res:Landroid/sec/multiwindow/MultiWindow;
    goto :goto_0

    .line 185
    .end local v2           #res:Landroid/sec/multiwindow/MultiWindow;
    .restart local v1       #res:Landroid/sec/multiwindow/MultiWindow;
    :cond_1
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    .line 187
    .local v3, winType:Landroid/sec/multiwindow/MultiWindowType;
    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v3, v4}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 188
    new-instance v1, Landroid/sec/multiwindow/MultiWindow;

    .end local v1           #res:Landroid/sec/multiwindow/MultiWindow;
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    invoke-direct {v1, v4, v5, p1}, Landroid/sec/multiwindow/MultiWindow;-><init>(Landroid/content/Context;Landroid/sec/multiwindow/IMultiWindowService;Landroid/content/Intent;)V

    .restart local v1       #res:Landroid/sec/multiwindow/MultiWindow;
    :cond_2
    move-object v2, v1

    .line 190
    .end local v1           #res:Landroid/sec/multiwindow/MultiWindow;
    .restart local v2       #res:Landroid/sec/multiwindow/MultiWindow;
    goto :goto_0
.end method

.method public isMultiWindow(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "componentName"

    .prologue
    .line 360
    const/4 v1, 0x0

    .line 362
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->isMultiWindow(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 370
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 363
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 365
    .restart local v2       #result:I
    goto :goto_0

    .line 366
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 367
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 368
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public isMultiWindow(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "owner"
    .parameter "componentName"

    .prologue
    .line 447
    const/4 v1, 0x0

    .line 449
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->isMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 457
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 450
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 451
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 452
    .restart local v2       #result:I
    goto :goto_0

    .line 453
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 454
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 455
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public isPermissionOff()Z
    .locals 5

    .prologue
    .line 1584
    const/4 v1, 0x0

    .line 1586
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 1598
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 1590
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->isPermissionOff()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 1598
    .restart local v2       #result:I
    goto :goto_0

    .line 1591
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 1592
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 1593
    .restart local v2       #result:I
    goto :goto_0

    .line 1594
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 1595
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 1596
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public isRunning(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "componentName"

    .prologue
    .line 491
    const/4 v1, 0x0

    .line 493
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->isRunning(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 501
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 494
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 495
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 496
    .restart local v2       #result:I
    goto :goto_0

    .line 497
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 498
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 499
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public isVisible(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "componentName"

    .prologue
    .line 548
    const/4 v1, 0x0

    .line 550
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->isVisible(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 558
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 551
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 553
    .restart local v2       #result:I
    goto :goto_0

    .line 554
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 555
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 556
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public notifyFinished(Landroid/app/Activity;)Z
    .locals 6
    .parameter "selfActivity"

    .prologue
    .line 667
    const/4 v2, 0x0

    .line 669
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v4, v5, :cond_0

    move v3, v2

    .line 682
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 672
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 674
    .local v0, componentName:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    invoke-interface {v4, v0, v5}, Landroid/sec/multiwindow/IMultiWindowService;->notifyFinished(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .line 682
    .restart local v3       #result:I
    goto :goto_0

    .line 675
    .end local v3           #result:I
    :catch_0
    move-exception v1

    .line 676
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 677
    .restart local v3       #result:I
    goto :goto_0

    .line 678
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v1

    .line 679
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 680
    .restart local v3       #result:I
    goto :goto_0
.end method

.method public notifyForceFinished(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "componentName"

    .prologue
    .line 1000
    const/4 v1, 0x0

    .line 1002
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 1014
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 1006
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->notifyForceFinished(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 1014
    .restart local v2       #result:I
    goto :goto_0

    .line 1007
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 1008
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 1009
    .restart local v2       #result:I
    goto :goto_0

    .line 1010
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 1011
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 1012
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public notifySIP(I)Z
    .locals 5
    .parameter "height"

    .prologue
    .line 1603
    const/4 v1, 0x0

    .line 1605
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 1618
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 1609
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->notifySIP(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 1618
    .restart local v2       #result:I
    goto :goto_0

    .line 1610
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 1611
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 1612
    .restart local v2       #result:I
    goto :goto_0

    .line 1613
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 1614
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 1615
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public notifyStarted(Landroid/app/Activity;)Z
    .locals 11
    .parameter "selfActivity"

    .prologue
    const/4 v10, -0x1

    .line 625
    const/4 v6, 0x0

    .line 627
    .local v6, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v8

    sget-object v9, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v8, v9, :cond_0

    move v7, v6

    .line 662
    .end local v6           #result:Z
    .local v7, result:I
    :goto_0
    return v7

    .line 630
    .end local v7           #result:I
    .restart local v6       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 634
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 635
    .local v5, myWindow:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 636
    .local v4, myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v8, v10, :cond_1

    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v8, v10, :cond_2

    :cond_1
    move v7, v6

    .line 637
    .restart local v7       #result:I
    goto :goto_0

    .line 640
    .end local v7           #result:I
    :cond_2
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 641
    .local v2, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 643
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v8, v9, :cond_3

    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v9, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v8, v9, :cond_4

    .line 644
    :cond_3
    invoke-virtual {p0, v1}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 647
    :try_start_0
    new-instance v8, Landroid/sec/multiwindow/MultiWindowKey;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v9

    invoke-direct {v8, v1, v9}, Landroid/sec/multiwindow/MultiWindowKey;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {p0, v8}, Landroid/sec/multiwindow/MultiWindowManager;->getAction(Landroid/sec/multiwindow/MultiWindowKey;)Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    move-result-object v0

    .line 648
    .local v0, action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    invoke-virtual {v0, p1}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->updateActivity(Landroid/app/Activity;)V

    .line 649
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v8

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v9

    invoke-interface {v8, v1, v0, v9}, Landroid/sec/multiwindow/IMultiWindowService;->regWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z

    move-result v6

    .line 650
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v8

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v9

    invoke-interface {v8, v1, v9}, Landroid/sec/multiwindow/IMultiWindowService;->notifyStarted(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0           #action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    :cond_4
    move v7, v6

    .line 662
    .restart local v7       #result:I
    goto :goto_0

    .line 652
    .end local v7           #result:I
    :catch_0
    move-exception v3

    .line 653
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v8, "MultiWindowManager"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v6

    .line 654
    .restart local v7       #result:I
    goto :goto_0

    .line 655
    .end local v3           #e:Ljava/lang/NullPointerException;
    .end local v7           #result:I
    :catch_1
    move-exception v3

    .line 656
    .local v3, e:Landroid/os/RemoteException;
    const-string v8, "MultiWindowManager"

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v6

    .line 657
    .restart local v7       #result:I
    goto :goto_0
.end method

.method public orientationChangeRestore(Landroid/content/ComponentName;I)Z
    .locals 5
    .parameter "cName"
    .parameter "orientation"

    .prologue
    .line 705
    const/4 v1, 0x0

    .line 707
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 723
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 710
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v1

    .line 711
    .restart local v2       #result:I
    goto :goto_0

    .line 715
    .end local v2           #result:I
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->orientationChangeRestore(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 723
    .restart local v2       #result:I
    goto :goto_0

    .line 716
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 717
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 718
    .restart local v2       #result:I
    goto :goto_0

    .line 719
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 720
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 721
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public postResume(Landroid/app/Activity;)Z
    .locals 6
    .parameter "activity"

    .prologue
    .line 1038
    const/4 v2, 0x0

    .line 1040
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v4, v5, :cond_0

    move v3, v2

    .line 1054
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 1043
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1046
    .local v0, componentName:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    invoke-interface {v4, v0, v5}, Landroid/sec/multiwindow/IMultiWindowService;->postResume(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .line 1054
    .restart local v3       #result:I
    goto :goto_0

    .line 1047
    .end local v3           #result:I
    :catch_0
    move-exception v1

    .line 1048
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 1049
    .restart local v3       #result:I
    goto :goto_0

    .line 1050
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v1

    .line 1051
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 1052
    .restart local v3       #result:I
    goto :goto_0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;
    .locals 5
    .parameter "componentName"

    .prologue
    .line 209
    const/4 v1, 0x0

    .line 211
    .local v1, result:Landroid/sec/multiwindow/IMultiWindow;
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 213
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->registerMultiWindow(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    :cond_0
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v1

    move-object v2, v1

    .line 223
    .end local v1           #result:Landroid/sec/multiwindow/IMultiWindow;
    .local v2, result:Landroid/sec/multiwindow/IMultiWindow;
    :goto_0
    return-object v2

    .line 214
    .end local v2           #result:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v1       #result:Landroid/sec/multiwindow/IMultiWindow;
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 216
    .end local v1           #result:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v2       #result:Landroid/sec/multiwindow/IMultiWindow;
    goto :goto_0

    .line 217
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v1       #result:Landroid/sec/multiwindow/IMultiWindow;
    :catch_1
    move-exception v0

    .line 218
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 219
    .end local v1           #result:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v2       #result:Landroid/sec/multiwindow/IMultiWindow;
    goto :goto_0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;II)Landroid/sec/multiwindow/IMultiWindow;
    .locals 5
    .parameter "componentName"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    const/4 v2, 0x0

    .line 242
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-object v2

    .line 245
    :cond_1
    const/4 v1, 0x0

    .line 247
    .local v1, res:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/sec/multiwindow/IMultiWindowService;->registerMultiWindowWithMin(Landroid/content/ComponentName;II)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 255
    if-nez v1, :cond_2

    .line 256
    const-string v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registerMultiWindow2 fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_2
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v2

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 251
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 252
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;IIZ)Landroid/sec/multiwindow/IMultiWindow;
    .locals 5
    .parameter "componentName"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "isfixedRatio"

    .prologue
    const/4 v2, 0x0

    .line 264
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-object v2

    .line 267
    :cond_1
    const/4 v1, 0x0

    .line 269
    .local v1, res:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/sec/multiwindow/IMultiWindowService;->registerMultiWindowWithMinAndRatio(Landroid/content/ComponentName;IIZ)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 277
    if-nez v1, :cond_2

    .line 278
    const-string v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registerMultiWindow3 fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v2

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 273
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 274
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;Ljava/util/List;)Landroid/sec/multiwindow/IMultiWindow;
    .locals 10
    .parameter "componentName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/sec/multiwindow/IMultiWindow;"
        }
    .end annotation

    .prologue
    .local p2, windowSize:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 286
    if-nez p2, :cond_0

    .line 312
    :goto_0
    return-object v5

    .line 289
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v3, minSize:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 291
    .local v2, item:Landroid/graphics/Point;
    iget v6, v2, Landroid/graphics/Point;->x:I

    if-ltz v6, :cond_1

    iget v6, v2, Landroid/graphics/Point;->y:I

    if-ltz v6, :cond_1

    .line 293
    new-instance v6, Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Point;->x:I

    iget v8, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 296
    .end local v2           #item:Landroid/graphics/Point;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_3

    .line 297
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->registerMultiWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v5

    goto :goto_0

    .line 299
    :cond_3
    const/4 v4, 0x0

    .line 301
    .local v4, res:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v6

    invoke-interface {v6, p1, v3}, Landroid/sec/multiwindow/IMultiWindowService;->registerMultiWindowOwnerWithMinList(Landroid/content/ComponentName;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 309
    if-nez v4, :cond_4

    .line 310
    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " registerMultiWindow4 fail."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_4
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v5

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 305
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerMultiWindowPair(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "owner"
    .parameter "componentName"

    .prologue
    .line 375
    const/4 v1, 0x0

    .line 377
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->registerMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 385
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 378
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 380
    .restart local v2       #result:I
    goto :goto_0

    .line 381
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 382
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 383
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public removeMultiWindow(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "componentName"

    .prologue
    .line 317
    const/4 v1, 0x0

    .line 319
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->removeMultiWindow(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 327
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 320
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 322
    .restart local v2       #result:I
    goto :goto_0

    .line 323
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 324
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 325
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public removeMultiWindowOwnerItem(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "owner"

    .prologue
    .line 404
    const/4 v1, 0x0

    .line 406
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->removeMultiWindowOwnerItem(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 414
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 407
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 409
    .restart local v2       #result:I
    goto :goto_0

    .line 410
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 411
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 412
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public removeMultiWindowPair(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "owner"
    .parameter "componentName"

    .prologue
    .line 390
    const/4 v1, 0x0

    .line 392
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->removeMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 400
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 393
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 395
    .restart local v2       #result:I
    goto :goto_0

    .line 396
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 397
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 398
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z
    .locals 5
    .parameter "componentName"
    .parameter "mwListener"

    .prologue
    .line 608
    const/4 v1, 0x0

    .line 611
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 619
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 612
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 613
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 614
    .restart local v2       #result:I
    goto :goto_0

    .line 615
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 616
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 617
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public screenShot(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "componentName"

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 196
    .local v1, result:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->screenShot(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 204
    .end local v1           #result:Landroid/graphics/Bitmap;
    .local v2, result:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 197
    .end local v2           #result:Landroid/graphics/Bitmap;
    .restart local v1       #result:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 199
    .end local v1           #result:Landroid/graphics/Bitmap;
    .restart local v2       #result:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 200
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/graphics/Bitmap;
    .restart local v1       #result:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    .line 201
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 202
    .end local v1           #result:Landroid/graphics/Bitmap;
    .restart local v2       #result:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public sendCreateAction(Landroid/app/Activity;)Z
    .locals 9
    .parameter "activity"

    .prologue
    .line 1059
    const/4 v4, 0x0

    .line 1061
    .local v4, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v6

    sget-object v7, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v6, v7, :cond_0

    move v5, v4

    .line 1082
    .end local v4           #result:Z
    .local v5, result:I
    :goto_0
    return v5

    .line 1064
    .end local v5           #result:I
    .restart local v4       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 1067
    .local v1, componentName:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/sec/multiwindow/IMultiWindowService;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1068
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 1069
    .local v3, pid:I
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v6

    invoke-interface {v6, v1, v3}, Landroid/sec/multiwindow/IMultiWindowService;->initWindowClassInfo(Landroid/content/ComponentName;I)V

    .line 1070
    new-instance v6, Landroid/sec/multiwindow/MultiWindowKey;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v7

    invoke-direct {v6, v1, v7}, Landroid/sec/multiwindow/MultiWindowKey;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {p0, v6}, Landroid/sec/multiwindow/MultiWindowManager;->getAction(Landroid/sec/multiwindow/MultiWindowKey;)Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    move-result-object v0

    .line 1071
    .local v0, action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    invoke-virtual {v0, p1}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->updateActivity(Landroid/app/Activity;)V

    .line 1072
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v7

    invoke-interface {v6, v1, v0, v7}, Landroid/sec/multiwindow/IMultiWindowService;->regWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .end local v0           #action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    .end local v3           #pid:I
    :cond_1
    move v5, v4

    .line 1082
    .restart local v5       #result:I
    goto :goto_0

    .line 1074
    .end local v5           #result:I
    :catch_0
    move-exception v2

    .line 1075
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v6, "MultiWindowManager"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v4

    .line 1076
    .restart local v5       #result:I
    goto :goto_0

    .line 1077
    .end local v2           #e:Ljava/lang/NullPointerException;
    .end local v5           #result:I
    :catch_1
    move-exception v2

    .line 1078
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "MultiWindowManager"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1079
    const-string v6, "MultiWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendCreateAction - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 1080
    .restart local v5       #result:I
    goto :goto_0
.end method

.method public sendDestroyAction(Landroid/app/Activity;)Z
    .locals 7
    .parameter "activity"

    .prologue
    .line 1459
    const/4 v2, 0x0

    .line 1461
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v4, v5, :cond_0

    move v3, v2

    .line 1480
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 1464
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    const/4 v0, 0x0

    .line 1467
    .local v0, componentName:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1468
    if-eqz v0, :cond_1

    .line 1469
    sget-object v4, Landroid/sec/multiwindow/MultiWindowManager;->mActionPair:Ljava/util/HashMap;

    new-instance v5, Landroid/sec/multiwindow/MultiWindowKey;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v6

    invoke-direct {v5, v0, v6}, Landroid/sec/multiwindow/MultiWindowKey;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    invoke-interface {v4, v0, v5}, Landroid/sec/multiwindow/IMultiWindowService;->destroyActivity(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :cond_1
    move v3, v2

    .line 1480
    .restart local v3       #result:I
    goto :goto_0

    .line 1472
    .end local v3           #result:I
    :catch_0
    move-exception v1

    .line 1473
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 1474
    .restart local v3       #result:I
    goto :goto_0

    .line 1475
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v1

    .line 1476
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 1477
    .restart local v3       #result:I
    goto :goto_0
.end method

.method public sendFinishAction(Landroid/app/Activity;)Z
    .locals 8
    .parameter "activity"

    .prologue
    .line 1431
    const/4 v3, 0x0

    .line 1433
    .local v3, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v5

    sget-object v6, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v5, v6, :cond_0

    move v4, v3

    .line 1454
    .end local v3           #result:Z
    .local v4, result:I
    :goto_0
    return v4

    .line 1436
    .end local v4           #result:I
    .restart local v3       #result:Z
    :cond_0
    const/4 v0, 0x0

    .line 1439
    .local v0, componentName:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1440
    if-eqz v0, :cond_1

    .line 1441
    sget-object v5, Landroid/sec/multiwindow/MultiWindowManager;->mActionPair:Ljava/util/HashMap;

    new-instance v6, Landroid/sec/multiwindow/MultiWindowKey;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v7

    invoke-direct {v6, v0, v7}, Landroid/sec/multiwindow/MultiWindowKey;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v6

    invoke-interface {v5, v0, v6}, Landroid/sec/multiwindow/IMultiWindowService;->finishActivity(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :cond_1
    move v4, v3

    .line 1454
    .restart local v4       #result:I
    goto :goto_0

    .line 1444
    .end local v4           #result:I
    :catch_0
    move-exception v1

    .line 1445
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .line 1446
    .restart local v4       #result:I
    goto :goto_0

    .line 1447
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v4           #result:I
    :catch_1
    move-exception v2

    .line 1448
    .local v2, ef:Landroid/os/RemoteException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1449
    if-eqz v0, :cond_2

    .line 1450
    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finish - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v4, v3

    .line 1451
    .restart local v4       #result:I
    goto :goto_0
.end method

.method public sendPauseAction(Landroid/app/Activity;)Z
    .locals 7
    .parameter "activity"

    .prologue
    .line 1408
    const/4 v2, 0x0

    .line 1410
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v4, v5, :cond_0

    move v3, v2

    .line 1426
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 1413
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1414
    .local v0, componentName:Landroid/content/ComponentName;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sendPauseAction]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/sec/multiwindow/IMultiWindowService;->pauseChangeInformation(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .line 1426
    .restart local v3       #result:I
    goto :goto_0

    .line 1418
    .end local v3           #result:I
    :catch_0
    move-exception v1

    .line 1419
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 1420
    .restart local v3       #result:I
    goto :goto_0

    .line 1421
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v1

    .line 1422
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 1423
    .restart local v3       #result:I
    goto :goto_0
.end method

.method public sendResumeAction(Landroid/app/Activity;)Z
    .locals 4
    .parameter "activity"

    .prologue
    .line 1123
    const/4 v0, 0x0

    .line 1125
    .local v0, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v3, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v2, v3, :cond_0

    move v1, v0

    .line 1141
    .end local v0           #result:Z
    .local v1, result:I
    :goto_0
    return v1

    .line 1128
    .end local v1           #result:I
    .restart local v0       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    .line 1129
    .restart local v1       #result:I
    goto :goto_0

    .line 1132
    .end local v1           #result:I
    :cond_1
    sget-object v2, Landroid/sec/multiwindow/MultiWindowManager$1;->$SwitchMap$android$sec$multiwindow$MultiWindowType:[I

    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/multiwindow/MultiWindowType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v1, v0

    .line 1141
    .restart local v1       #result:I
    goto :goto_0

    .line 1134
    .end local v1           #result:I
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->initSplitMode(Landroid/app/Activity;)Z

    move-result v0

    .line 1135
    goto :goto_1

    .line 1137
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->initFreestyleModeLayout(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_1

    .line 1132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendStartAction(Landroid/app/Activity;)Z
    .locals 12
    .parameter "activity"

    .prologue
    .line 1087
    const/4 v6, 0x0

    .line 1089
    .local v6, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v9

    sget-object v10, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v9, v10, :cond_0

    move v7, v6

    .line 1117
    .end local v6           #result:Z
    .local v7, result:I
    :goto_0
    return v7

    .line 1092
    .end local v7           #result:I
    .restart local v6       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 1095
    .local v1, componentName:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v9

    invoke-interface {v9, v1}, Landroid/sec/multiwindow/IMultiWindowService;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1096
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 1097
    .local v5, pid:I
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v9

    invoke-interface {v9, v1, v5}, Landroid/sec/multiwindow/IMultiWindowService;->initWindowClassInfo(Landroid/content/ComponentName;I)V

    .line 1099
    new-instance v9, Landroid/sec/multiwindow/MultiWindowKey;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v10

    invoke-direct {v9, v1, v10}, Landroid/sec/multiwindow/MultiWindowKey;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {p0, v9}, Landroid/sec/multiwindow/MultiWindowManager;->getAction(Landroid/sec/multiwindow/MultiWindowKey;)Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    move-result-object v0

    .line 1100
    .local v0, action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    invoke-virtual {v0, p1}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->updateActivity(Landroid/app/Activity;)V

    .line 1101
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v9

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v10

    invoke-interface {v9, v1, v0, v10}, Landroid/sec/multiwindow/IMultiWindowService;->regWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z

    move-result v6

    .line 1103
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1104
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1105
    .local v8, sAction:Ljava/lang/String;
    const-string v9, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1106
    .local v4, isMiniMode:Z
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v9

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v10

    invoke-interface {v9, v1, v10, v4}, Landroid/sec/multiwindow/IMultiWindowService;->startMultiWindowWithTaskId(Landroid/content/ComponentName;IZ)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .end local v0           #action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #isMiniMode:Z
    .end local v5           #pid:I
    .end local v8           #sAction:Ljava/lang/String;
    :cond_1
    move v7, v6

    .line 1117
    .restart local v7       #result:I
    goto :goto_0

    .line 1108
    .end local v7           #result:I
    :catch_0
    move-exception v2

    .line 1109
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v9, "MultiWindowManager"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v6

    .line 1110
    .restart local v7       #result:I
    goto :goto_0

    .line 1111
    .end local v2           #e:Ljava/lang/NullPointerException;
    .end local v7           #result:I
    :catch_1
    move-exception v2

    .line 1112
    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "MultiWindowManager"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1113
    const-string v9, "MultiWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendStartAction - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 1114
    .restart local v7       #result:I
    goto/16 :goto_0
.end method

.method public setMultiLayout(Z)Z
    .locals 5
    .parameter "value"

    .prologue
    .line 871
    const/4 v1, 0x0

    .line 873
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->setMultiLayout(Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 881
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 874
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 875
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 876
    .restart local v2       #result:I
    goto :goto_0

    .line 877
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 878
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 879
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public setMultiWindowMode(Landroid/sec/multiwindow/MultiWindowType;)Z
    .locals 5
    .parameter "winType"

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, result:Z
    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/sec/multiwindow/MultiWindowManager;->readConfig(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    sget-object p1, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    .line 138
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-virtual {p1}, Landroid/sec/multiwindow/MultiWindowType;->getiValue()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/sec/multiwindow/IMultiWindowService;->setMultiWindowType(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 146
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 139
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 141
    .restart local v2       #result:I
    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 143
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 144
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public setPreferenceValue(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 1624
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/IMultiWindowService;->setPreferenceValue(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1631
    :goto_0
    return-void

    .line 1625
    :catch_0
    move-exception v0

    .line 1626
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1627
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1628
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showSwitchWindowGuideDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1641
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/multiwindow/IMultiWindowService;->showSwitchWindowGuideDialog()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1671
    :goto_0
    return-void

    .line 1644
    :catch_0
    move-exception v0

    .line 1645
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1646
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1647
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startLauncher()Z
    .locals 5

    .prologue
    .line 1485
    const/4 v1, 0x0

    .line 1487
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_0

    .line 1489
    const-string v3, "MultiWindowManager"

    const-string v4, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1497
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 1493
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    new-instance v0, Landroid/sec/mwdialog/MWDialog;

    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/sec/mwdialog/MWDialog;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1494
    .local v0, mwDialog:Landroid/sec/mwdialog/MWDialog;
    invoke-virtual {v0}, Landroid/sec/mwdialog/MWDialog;->show()V

    .line 1495
    const/4 v1, 0x1

    move v2, v1

    .line 1497
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public startLauncher(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "componentName"

    .prologue
    .line 1517
    const/4 v1, 0x0

    .line 1518
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_0

    .line 1520
    const-string v3, "MultiWindowManager"

    const-string v4, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1528
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 1524
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    new-instance v0, Landroid/sec/mwdialog/MWDialog;

    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Landroid/sec/mwdialog/MWDialog;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1525
    .local v0, mwDialog:Landroid/sec/mwdialog/MWDialog;
    invoke-virtual {v0}, Landroid/sec/mwdialog/MWDialog;->show()V

    .line 1526
    const/4 v1, 0x1

    move v2, v1

    .line 1528
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public startLauncher(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 1549
    const/4 v1, 0x0

    .line 1550
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_0

    .line 1552
    const-string v3, "MultiWindowManager"

    const-string v4, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1560
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 1556
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    new-instance v0, Landroid/sec/mwdialog/MWAlertDialog;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Landroid/sec/mwdialog/MWAlertDialog;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1557
    .local v0, mwDialog:Landroid/sec/mwdialog/MWAlertDialog;
    invoke-virtual {v0}, Landroid/sec/mwdialog/MWAlertDialog;->show()Landroid/app/AlertDialog;

    .line 1558
    const/4 v1, 0x1

    move v2, v1

    .line 1560
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public startLauncher(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "context"
    .parameter "componentName"

    .prologue
    .line 1566
    const/4 v0, 0x0

    .line 1567
    .local v0, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v3, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v2, v3, :cond_0

    .line 1569
    const-string v2, "MultiWindowManager"

    const-string v3, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1579
    .end local v0           #result:Z
    .local v1, result:I
    :goto_0
    return v1

    .line 1573
    .end local v1           #result:I
    .restart local v0       #result:Z
    :cond_0
    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    iget-boolean v2, v2, Landroid/sec/mwdialog/MWAlertDialog;->launcherTimer:Z

    if-nez v2, :cond_2

    .line 1574
    :cond_1
    new-instance v2, Landroid/sec/mwdialog/MWAlertDialog;

    invoke-direct {v2, p1, p2}, Landroid/sec/mwdialog/MWAlertDialog;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    iput-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    .line 1575
    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    invoke-virtual {v2}, Landroid/sec/mwdialog/MWAlertDialog;->show()Landroid/app/AlertDialog;

    .line 1578
    :cond_2
    const/4 v0, 0x1

    move v1, v0

    .line 1579
    .restart local v1       #result:I
    goto :goto_0
.end method

.method public startSplitScreens(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "Left"
    .parameter "Right"

    .prologue
    .line 728
    const/4 v3, 0x0

    .line 729
    .local v3, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v5

    sget-object v6, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v5, v6, :cond_0

    .line 731
    const-string v5, "MultiWindowManager"

    const-string v6, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 750
    .end local v3           #result:Z
    .local v4, result:I
    :goto_0
    return v4

    .line 735
    .end local v4           #result:I
    .restart local v3       #result:Z
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 736
    .local v1, intentLeft:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 738
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 739
    .local v2, intentRight:Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 742
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    invoke-interface {v5, v1, v2}, Landroid/sec/multiwindow/IMultiWindowService;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    move v4, v3

    .line 750
    .restart local v4       #result:I
    goto :goto_0

    .line 743
    .end local v4           #result:I
    :catch_0
    move-exception v0

    .line 744
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .line 745
    .restart local v4       #result:I
    goto :goto_0

    .line 746
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v4           #result:I
    :catch_1
    move-exception v0

    .line 747
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .line 748
    .restart local v4       #result:I
    goto :goto_0
.end method

.method public startSplitScreens(Landroid/content/ComponentName;Landroid/content/Intent;)Z
    .locals 6
    .parameter "Left"
    .parameter "Right"

    .prologue
    .line 755
    const/4 v2, 0x0

    .line 756
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v4, v5, :cond_0

    .line 758
    const-string v4, "MultiWindowManager"

    const-string v5, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 774
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 762
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 763
    .local v1, intentLeft:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 766
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4, v1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .line 774
    .restart local v3       #result:I
    goto :goto_0

    .line 767
    .end local v3           #result:I
    :catch_0
    move-exception v0

    .line 768
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 769
    .restart local v3       #result:I
    goto :goto_0

    .line 770
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v0

    .line 771
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 772
    .restart local v3       #result:I
    goto :goto_0
.end method

.method public startSplitScreens(Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "Left"
    .parameter "Right"

    .prologue
    .line 779
    const/4 v2, 0x0

    .line 780
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v4, v5, :cond_0

    .line 782
    const-string v4, "MultiWindowManager"

    const-string v5, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 799
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 786
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 787
    .local v1, intentRight:Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 790
    :try_start_0
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[startSplitScreens] Right : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4, p1, v1}, Landroid/sec/multiwindow/IMultiWindowService;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .line 799
    .restart local v3       #result:I
    goto :goto_0

    .line 792
    .end local v3           #result:I
    :catch_0
    move-exception v0

    .line 793
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 794
    .restart local v3       #result:I
    goto :goto_0

    .line 795
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v0

    .line 796
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 797
    .restart local v3       #result:I
    goto :goto_0
.end method

.method public startSplitScreensForLauncher(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "Left"
    .parameter "Right"

    .prologue
    .line 804
    const/4 v3, 0x0

    .line 805
    .local v3, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v5

    sget-object v6, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v5, v6, :cond_0

    .line 807
    const-string v5, "MultiWindowManager"

    const-string v6, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 828
    .end local v3           #result:Z
    .local v4, result:I
    :goto_0
    return v4

    .line 810
    .end local v4           #result:I
    .restart local v3       #result:Z
    :cond_0
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v5

    invoke-interface {v5}, Landroid/sec/multiwindow/IMultiWindow;->isMaximized()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 811
    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/sec/multiwindow/MultiWindowManager;->showSwitchWindowGuideDialog(Landroid/content/Context;)V

    .line 813
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 814
    .local v1, intentLeft:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 816
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 817
    .local v2, intentRight:Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 820
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    invoke-interface {v5, v1, v2}, Landroid/sec/multiwindow/IMultiWindowService;->startSplitScreensForLauncher(Landroid/content/Intent;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    move v4, v3

    .line 828
    .restart local v4       #result:I
    goto :goto_0

    .line 821
    .end local v4           #result:I
    :catch_0
    move-exception v0

    .line 822
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .line 823
    .restart local v4       #result:I
    goto :goto_0

    .line 824
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v4           #result:I
    :catch_1
    move-exception v0

    .line 825
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .line 826
    .restart local v4       #result:I
    goto :goto_0
.end method

.method public unRegisterMultiWindow(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "componentName"

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 231
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/multiwindow/IMultiWindowService;->unRegisterMultiWindow(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 236
    :goto_0
    return v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
