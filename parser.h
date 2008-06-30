#pragma once

#include <ios>
#include <string>
#include "scanner.h"
#include "document.h"

namespace YAML
{
	class Node;

	class Parser
	{
	public:
		Parser(std::istream& in);
		~Parser();

		void GetNextDocument(Document& document);

	private:
		Scanner m_scanner;
	};
}