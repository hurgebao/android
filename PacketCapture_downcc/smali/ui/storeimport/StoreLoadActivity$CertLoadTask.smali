.class public final Lui/storeimport/StoreLoadActivity$CertLoadTask;
.super Lui/folder/AsyncExceptionTask;
.source "StoreLoadActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/storeimport/StoreLoadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CertLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lui/folder/AsyncExceptionTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final aliasName:Ljava/lang/String;

.field private final ctx:Landroid/content/Context;

.field private final filePath:Ljava/lang/String;

.field private final storePass:Ljava/lang/String;

.field final synthetic this$0:Lui/storeimport/StoreLoadActivity;


# direct methods
.method public constructor <init>(Lui/storeimport/StoreLoadActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "$outer"    # Lui/storeimport/StoreLoadActivity;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "storePass"    # Ljava/lang/String;
    .param p5, "aliasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storePass"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aliasName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-direct {p0}, Lui/folder/AsyncExceptionTask;-><init>()V

    iput-object p2, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->ctx:Landroid/content/Context;

    iput-object p3, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->filePath:Ljava/lang/String;

    iput-object p4, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->storePass:Ljava/lang/String;

    iput-object p5, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->aliasName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground2([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lui/storeimport/StoreLoadActivity$CertLoadTask;->doInBackground2([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doInBackground2([Ljava/lang/String;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const-string v8, "params"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->filePath:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v2, "file":Ljava/io/File;
    const-string v8, "PKCS12"

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .local v5, "keyStore":Ljava/security/KeyStore;
    move-object v3, v7

    .line 102
    check-cast v3, Ljava/io/FileInputStream;

    .line 103
    .local v3, "fin":Ljava/io/FileInputStream;
    nop

    .line 107
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    :try_start_1
    move-object v0, v4

    check-cast v0, Ljava/io/InputStream;

    move-object v8, v0

    iget-object v9, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->storePass:Ljava/lang/String;

    if-nez v9, :cond_1

    new-instance v7, Lkotlin/TypeCastException;

    const-string v8, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v7, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :catchall_0
    move-exception v7

    move-object v3, v4

    .line 122
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :goto_0
    if-eqz v3, :cond_0

    .line 123
    nop

    .line 124
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 126
    :cond_0
    :goto_1
    throw v7

    .line 108
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    const-string v10, "(this as java.lang.String).toCharArray()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 109
    iget-object v8, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->aliasName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 110
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-nez v1, :cond_2

    .line 111
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Cannot load certificate. Alias name might be wrong."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 113
    :cond_2
    iget-object v8, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->aliasName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v6

    check-cast v6, Ljava/security/PrivateKey;

    .line 114
    .local v6, "privKey":Ljava/security/PrivateKey;
    if-nez v6, :cond_3

    .line 115
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Cannot load key. Password might be wrong."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 119
    :cond_3
    sget-object v8, Lapp/ssldecryptor/CACertGenerator;->INSTANCE:Lapp/ssldecryptor/CACertGenerator;

    iget-object v9, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->ctx:Landroid/content/Context;

    invoke-virtual {v8, v9, v6, v1}, Lapp/ssldecryptor/CACertGenerator;->save(Landroid/content/Context;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    nop

    .line 124
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 129
    :goto_2
    return-object v7

    .line 125
    :catch_0
    move-exception v8

    goto :goto_2

    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "privKey":Ljava/security/PrivateKey;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_1
    move-exception v8

    goto :goto_1

    .line 126
    :catchall_1
    move-exception v7

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute2(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lui/storeimport/StoreLoadActivity$CertLoadTask;->onPostExecute2(Ljava/lang/Void;Ljava/lang/Exception;)V

    return-void
.end method

.method public onPostExecute2(Ljava/lang/Void;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v4, 0x1

    .line 134
    if-nez p2, :cond_0

    .line 135
    iget-object v2, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->ctx:Landroid/content/Context;

    const-string v1, "Imported"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "file"

    iget-object v2, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->this$0:Lui/storeimport/StoreLoadActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lui/storeimport/StoreLoadActivity;->setResult(ILandroid/content/Intent;)V

    .line 139
    iget-object v1, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-virtual {v1}, Lui/storeimport/StoreLoadActivity;->finish()V

    .line 142
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-virtual {v1}, Lui/storeimport/StoreLoadActivity;->getInputDialog()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 145
    iget-object v1, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-virtual {v1}, Lui/storeimport/StoreLoadActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-virtual {v1}, Lui/storeimport/StoreLoadActivity;->getCancelButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 147
    iget-object v1, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-virtual {v1}, Lui/storeimport/StoreLoadActivity;->getOkButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 148
    return-void

    .line 141
    :cond_0
    iget-object v2, p0, Lui/storeimport/StoreLoadActivity$CertLoadTask;->ctx:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
