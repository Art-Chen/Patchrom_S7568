.class public Lcom/android/internal/policy/impl/CircleMissedCallList;
.super Landroid/widget/FrameLayout;
.source "CircleMissedCallList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleMissedCallList"


# instance fields
.field private final DEBUG:Z

.field private final MAX_LIST_NUM:I

.field private mContext:Landroid/content/Context;

.field private mGapY:I

.field private mGuideLineColor:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mLineEndX:I

.field private mLineEndY:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartX:I

.field private mLineStartY:I

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/CircleMissedEventData;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field private mRingDrawable:Landroid/graphics/drawable/Drawable;

.field private mRingHeight:I

.field private mRingWidth:I

.field mTitle:Landroid/widget/TextView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockAcquired:Z

.field private m_adapter:Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->m_adapter:Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->MAX_LIST_NUM:I

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleMissedCallList;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090062

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v2, 0x1020314

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedCallList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mListView:Landroid/widget/ListView;

    const v2, 0x1020016

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedCallList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mList:Ljava/util/ArrayList;

    invoke-direct {v2, p1, v3, v5}, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->m_adapter:Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->m_adapter:Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080435

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mRingWidth:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mRingHeight:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mRingWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mRingHeight:I

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v2, -0x887c72

    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mGuideLineColor:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mLinePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4040

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mLinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mGuideLineColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v2, 0x32

    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mGapY:I

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .local v1, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v3, "CircleMissedCallList"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private setGuideLineStartPos()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [I

    .local v0, pos:[I
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mLineStartX:I

    const/4 v1, 0x1

    aget v1, v0, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mGapY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mLineStartY:I

    return-void
.end method

.method private setGuildeLineEndPos(II)V
    .locals 1
    .parameter "posX"
    .parameter "posY"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mLineEndX:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mGapY:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mLineEndY:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const-string v0, "CircleMissedCallList"

    const-string v1, "draw"

    invoke-static {v0, v1}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mLineStartX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mLineStartY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mLineEndX:I

    iget v3, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mRingHeight:I

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mLineEndY:I

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mRingWidth:I

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_information_preview"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, action:I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/CircleMissedCallList;->setGuildeLineEndPos(II)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedCallList;->invalidate()V

    .end local v0           #action:I
    :cond_0
    :goto_0
    return-void

    .restart local v0       #action:I
    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mWakeLockAcquired:Z

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedCallList;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedCallList;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedCallList;->setGuideLineStartPos()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mTitle:Landroid/widget/TextView;

    const v2, 0x104065a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mWakeLockAcquired:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mWakeLockAcquired:Z

    :cond_4
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleMissedCallList;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateMissedCall(I)V
    .locals 13
    .parameter "count"

    .prologue
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;

    move-result-object v3

    .local v3, dbAdapter:Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->open()Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->getMissedCallCursor()Landroid/database/Cursor;

    move-result-object v0

    .local v0, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move v5, p1

    .local v5, max_count:I
    const/4 v10, 0x4

    if-le v5, v10, :cond_0

    const/4 v5, 0x4

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    if-lt v4, v5, :cond_3

    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->close()V

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->m_adapter:Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_3
    const-string v10, "name"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, name:Ljava/lang/String;
    const-string v10, "time"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .local v7, time:J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v10, "HH:mm"

    invoke-direct {v2, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v2, dateFormatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    .local v1, date:Ljava/util/Date;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .local v9, when:Ljava/lang/String;
    const-string v10, "CircleMissedCallList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateMissedCall : name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " when = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleMissedCallList;->mList:Ljava/util/ArrayList;

    new-instance v11, Lcom/android/internal/policy/impl/CircleMissedEventData;

    const/4 v12, 0x0

    invoke-direct {v11, v6, v12, v9}, Lcom/android/internal/policy/impl/CircleMissedEventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0
.end method
