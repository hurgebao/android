.class Lkotlin/io/FilesKt__UtilsKt;
.super Lkotlin/io/FilesKt__FileTreeWalkKt;
.source "Utils.kt"


# direct methods
.method public static final copyTo(Ljava/io/File;Ljava/io/File;ZI)Ljava/io/File;
    .locals 10
    .param p0, "$receiver"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;
    .param p2, "overwrite"    # Z
    .param p3, "bufferSize"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "target"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Lkotlin/io/NoSuchFileException;

    const-string v4, "The source file doesn\'t exist."

    const/4 v5, 0x2

    move-object v2, p0

    move-object v6, v3

    invoke-direct/range {v1 .. v6}, Lkotlin/io/NoSuchFileException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 180
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    if-nez p2, :cond_1

    move v9, v6

    .line 183
    .local v9, "stillExists":Z
    :goto_0
    if-eqz v9, :cond_3

    .line 184
    new-instance v1, Lkotlin/io/FileAlreadyExistsException;

    const-string v2, "The destination file already exists."

    invoke-direct {v1, p0, p1, v2}, Lkotlin/io/FileAlreadyExistsException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 181
    .end local v9    # "stillExists":Z
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    move v9, v6

    goto :goto_0

    :cond_2
    move v9, v5

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_6

    .line 192
    new-instance v1, Lkotlin/io/FileSystemException;

    const-string v2, "Failed to create target directory."

    invoke-direct {v1, p0, p1, v2}, Lkotlin/io/FileSystemException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 194
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 196
    :cond_5
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;

    nop

    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/io/FileInputStream;

    move-object v7, v0

    .line 197
    .local v7, "input":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    nop

    :try_start_1
    move-object v0, v2

    check-cast v0, Ljava/io/FileOutputStream;

    move-object v8, v0

    .line 198
    .local v8, "output":Ljava/io/FileOutputStream;
    check-cast v7, Ljava/io/InputStream;

    .end local v7    # "input":Ljava/io/FileInputStream;
    check-cast v8, Ljava/io/OutputStream;

    .end local v8    # "output":Ljava/io/FileOutputStream;
    invoke-static {v7, v8, p3}, Lkotlin/io/ByteStreamsKt;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 197
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 199
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 201
    :cond_6
    return-object p1

    .line 197
    :catch_0
    move-exception v3

    nop

    :try_start_3
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v3

    move v4, v6

    :goto_2
    if-nez v4, :cond_7

    :try_start_5
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    :cond_7
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 199
    :catch_1
    move-exception v2

    nop

    :try_start_6
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    move v5, v6

    :goto_4
    if-nez v5, :cond_8

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_8
    throw v2

    .line 197
    :catch_2
    move-exception v4

    goto :goto_1

    .line 199
    :catch_3
    move-exception v3

    goto :goto_3

    :catchall_2
    move-exception v2

    goto :goto_4

    .line 197
    :catchall_3
    move-exception v3

    move v4, v5

    goto :goto_2
.end method

.method public static bridge synthetic copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;
    .locals 1

    .prologue
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 175
    const/4 p2, 0x0

    :cond_0
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1

    const/16 p3, 0x2000

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/io/FilesKt;->copyTo(Ljava/io/File;Ljava/io/File;ZI)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
