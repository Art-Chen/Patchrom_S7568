.class Landroid/widget/TimePicker$3;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 4
    .parameter "spinner"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 203
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/TimePicker;->access$100(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    .line 204
    .local v1, minValue:I
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/TimePicker;->access$100(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v0

    .line 205
    .local v0, maxValue:I
    if-ne p2, v0, :cond_1

    if-ne p3, v1, :cond_1

    .line 207
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    .line 212
    .local v2, newHour:I
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 222
    .end local v2           #newHour:I
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->onTimeChanged()V
    invoke-static {v3}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)V

    .line 223
    return-void

    .line 213
    :cond_1
    if-ne p2, v1, :cond_0

    if-ne p3, v0, :cond_0

    .line 215
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    .line 220
    .restart local v2       #newHour:I
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_0
.end method
