//===-- serialbox/Core/Archive/Archive.h --------------------------------------------*- C++ -*-===//
//
//                                    S E R I A L B O X
//
// This file is distributed under terms of BSD license.
// See LICENSE.txt for more information
//
//===------------------------------------------------------------------------------------------===//
//
/// \file
/// Abstract interface for Archives.
///
//===------------------------------------------------------------------------------------------===//

#ifndef SERIALBOX_CORE_ARCHIVE_ARCHIVE_H
#define SERIALBOX_CORE_ARCHIVE_ARCHIVE_H

#include "serialbox/Core/Exception.h"
#include "serialbox/Core/FieldID.h"
#include "serialbox/Core/StorageView.h"

namespace serialbox {

///
class Archive {
public:
  
  ///
  virtual void write(StorageView& storageView, const FieldID& fieldID) throw(Exception) = 0;

  ///
  virtual void read(StorageView& storageView, const FieldID& fieldID) throw(Exception) = 0;
};

} // namespace serialbox

#endif