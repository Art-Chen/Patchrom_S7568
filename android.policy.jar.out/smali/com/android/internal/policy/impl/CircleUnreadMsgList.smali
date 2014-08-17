.class public Lcom/android/internal/policy/impl/CircleUnreadMsgList;
.super Landroid/widget/FrameLayout;
.source "CircleUnreadMsgList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleUnreadMsgList"


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
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->DEBUG:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->m_adapter:Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;

    .line 52
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->MAX_LIST_NUM:I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 82
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090062

    invoke-virtual {v0, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    const v2, 0x1020314

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mListView:Landroid/widget/ListView;

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mList:Ljava/util/ArrayList;

    .line 86
    const v2, 0x1020016

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mTitle:Landroid/widget/TextView;

    .line 87
    new-instance v2, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mList:Ljava/util/ArrayList;

    invoke-direct {v2, p1, v3, v5}, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->m_adapter:Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;

    .line 88
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->m_adapter:Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080435

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingWidth:I

    .line 92
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingHeight:I

    .line 93
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    const v2, -0x887c72

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mGuideLineColor:I

    .line 97
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLinePaint:Landroid/graphics/Paint;

    .line 98
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4040

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 100
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mGuideLineColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    const/16 v2, 0x32

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mGapY:I

    .line 105
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 106
    .local v1, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v3, "CircleUnreadMsgList"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 107
    return-void
.end method

.method private setGuideLineStartPos()V
    .locals 3

    .prologue
    .line 184
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 185
    .local v0, pos:[I
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 186
    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineStartX:I

    .line 187
    const/4 v1, 0x1

    aget v1, v0, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mGapY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineStartY:I

    .line 188
    return-void
.end method

.method private setGuildeLineEndPos(II)V
    .locals 1
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 191
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineEndX:I

    .line 192
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mGapY:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineEndY:I

    .line 193
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 172
    const-string v0, "CircleUnreadMsgList"

    const-string v1, "draw"

    invoke-static {v0, v1}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 180
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineStartX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineStartY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineEndX:I

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingHeight:I

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineEndY:I

    iget v4, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingWidth:I

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 181
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_information_preview"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 148
    .local v0, action:I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->setGuildeLineEndPos(II)V

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->invalidate()V

    .line 168
    .end local v0           #action:I
    :cond_0
    :goto_0
    return-void

    .line 151
    .restart local v0       #action:I
    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 154
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLockAcquired:Z

    .line 156
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->setVisibility(I)V

    .line 157
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->setBackgroundColor(I)V

    .line 158
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->setGuideLineStartPos()V

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mTitle:Landroid/widget/TextView;

    const v2, 0x104065b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 160
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 161
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLockAcquired:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_4

    .line 162
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 163
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLockAcquired:Z

    .line 165
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateUnreadMsg(I)V
    .locals 14
    .parameter "count"

    .prologue
    .line 110
    iget-object v11, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;

    move-result-object v4

    .line 111
    .local v4, dbAdapter:Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->open()Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;

    .line 112
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->getUnreadMsgCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 114
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 115
    .local v5, i:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 116
    move v6, p1

    .line 117
    .local v6, max_count:I
    const/4 v11, 0x4

    if-le v6, v11, :cond_0

    .line 118
    const/4 v6, 0x4

    .line 120
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 122
    :cond_1
    if-lt v5, v6, :cond_3

    .line 139
    :cond_2
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 140
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->close()V

    .line 142
    iget-object v11, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->m_adapter:Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->notifyDataSetChanged()V

    .line 143
    return-void

    .line 125
    :cond_3
    const-string v11, "name"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, name:Ljava/lang/String;
    const-string v11, "time"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 127
    .local v8, time:J
    const-string v11, "content"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, content:Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v11, "HH:mm"

    invoke-direct {v3, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 129
    .local v3, dateFormatter:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 130
    .local v2, date:Ljava/util/Date;
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 132
    .local v10, when:Ljava/lang/String;
    const-string v11, "CircleUnreadMsgList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateUnreadMsg : name = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " when = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " content = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v11, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mList:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/internal/policy/impl/CircleMissedEventData;

    invoke-direct {v12, v7, v0, v10}, Lcom/android/internal/policy/impl/CircleMissedEventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v5, v5, 0x1

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_0
.end method
