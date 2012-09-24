.class public Lmiui/app/screenelement/data/DateTimeVariableUpdater;
.super Lmiui/app/screenelement/data/VariableUpdater;
.source "DateTimeVariableUpdater.java"


# instance fields
.field private mAmPm:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field protected mCalendar:Ljava/util/Calendar;

.field private mDate:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mDayOfWeek:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mHandler:Landroid/os/Handler;

.field private mHour12:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mHour24:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mLastUpdatedTime:J

.field private mMinute:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mMonth:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mNextAlarm:Lmiui/app/screenelement/util/IndexedStringVariable;

.field private mSecond:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mTime:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mTimeSys:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private final mTimeUpdater:Ljava/lang/Runnable;

.field private mYear:Lmiui/app/screenelement/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/VariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Lmiui/app/screenelement/data/DateTimeVariableUpdater$1;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater$1;-><init>(Lmiui/app/screenelement/data/DateTimeVariableUpdater;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "ampm"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mAmPm:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 55
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "hour12"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHour12:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 56
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "hour24"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHour24:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 57
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "minute"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mMinute:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 58
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "second"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mSecond:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 59
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "year"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mYear:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 60
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "month"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mMonth:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 61
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "date"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mDate:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 62
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "day_of_week"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 64
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "time"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTime:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 65
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "time_sys"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 66
    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 68
    new-instance v0, Lmiui/app/screenelement/util/IndexedStringVariable;

    const-string v1, "next_alarm_time"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/app/screenelement/util/IndexedStringVariable;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lmiui/app/screenelement/data/DateTimeVariableUpdater;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->updateTime()V

    return-void
.end method

.method static synthetic access$100(Lmiui/app/screenelement/data/DateTimeVariableUpdater;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private refreshAlarm()V
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, nextAlarm:Ljava/lang/String;
    iget-object v1, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v1, v0}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private updateTime()V
    .locals 6

    .prologue
    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 112
    .local v0, elapsedRealTimeMillis:J
    iget-wide v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 113
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 115
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mAmPm:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 116
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHour12:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 117
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHour24:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 118
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mMinute:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 119
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mYear:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 120
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mMonth:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 121
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mDate:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 123
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 124
    iget-object v2, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mSecond:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 125
    iput-wide v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lmiui/app/screenelement/data/VariableUpdater;->finish()V

    .line 101
    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lmiui/app/screenelement/data/VariableUpdater;->init()V

    .line 73
    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 74
    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lmiui/app/screenelement/data/VariableUpdater;->pause()V

    .line 96
    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lmiui/app/screenelement/data/VariableUpdater;->resume()V

    .line 86
    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    .line 90
    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->updateTime()V

    .line 91
    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/data/VariableUpdater;->tick(J)V

    .line 79
    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTime:Lmiui/app/screenelement/util/IndexedNumberVariable;

    long-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 80
    iget-object v0, p0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 81
    invoke-direct {p0}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;->updateTime()V

    .line 82
    return-void
.end method