.class Lcom/android/settings/tts/f;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field final synthetic vk:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/tts/f;->vk:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/tts/f;->vk:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->aU(I)V

    .line 122
    return-void
.end method