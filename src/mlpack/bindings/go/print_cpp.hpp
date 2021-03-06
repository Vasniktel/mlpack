/**
 * @file bindings/go/print_cpp.hpp
 * @author Yasmine Dumouchel
 *
 * Given a list of ParamData structures, emit a .cpp file defining the
 * Go bindings.
 *
 * mlpack is free software; you may redistribute it and/or modify it under the
 * terms of the 3-clause BSD license.  You should have received a copy of the
 * 3-clause BSD license along with mlpack.  If not, see
 * http://www.opensource.org/licenses/BSD-3-Clause for more information.
 */
#ifndef MLPACK_BINDINGS_GO_PRINT_CPP_HPP
#define MLPACK_BINDINGS_GO_PRINT_CPP_HPP

#include <mlpack/core.hpp>

namespace mlpack {
namespace bindings {
namespace go {

/**
 * Given a list of parameter definition and program documentation, print a
 * generated .cpp file to stdout.
 */
void PrintCPP(const util::ProgramDoc& programInfo,
              const std::string& mainFilename,
              const std::string& functionName);


} // namespace go
} // namespace bindings
} // namespace mlpack

#endif
